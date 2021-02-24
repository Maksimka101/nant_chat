import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nant_client/bloc/edit_user_bloc/edit_user_bloc.dart';
import 'package:nant_client/bloc/theme_bloc/theme_bloc.dart';
import 'package:nant_client/generated/l10n.dart';
import 'package:nant_client/models/user/user.dart';
import 'package:nant_client/ui/widgets/authorization_widgets/authorization_loading_widget.dart';
import 'package:nant_client/ui/widgets/layouts/safe_scaffold.dart';
import 'package:nant_client/ui/widgets/padding/paddings.dart';
import 'package:nant_client/ui/widgets/profile_screen/language_picker.dart';
import 'package:nant_client/utils/get_it/get_it.dart';
import 'package:nant_client/utils/validators/auth_validator.dart';

class AuthorizationScreen extends StatelessWidget {
  const AuthorizationScreen({
    Key key,
  }) : super(key: key);

  void _onPickLanguage(BuildContext context) {
    showLanguagePicker(context: context);
  }

  void _onChangeTheme() {
    getIt.get<ThemeBloc>().add(const ThemeSwitched());
  }

  @override
  Widget build(BuildContext context) {
    return SafeScaffold(
      appBar: AppBar(
        title: Text(S.of(context).authorization),
        actions: [
          IconButton(
            icon: const Icon(Icons.g_translate),
            onPressed: () => _onPickLanguage(context),
          ),
          IconButton(
            icon: const Icon(Icons.lightbulb_outline),
            onPressed: _onChangeTheme,
          )
        ],
      ),
      body: const _AuthScreenBody(),
    );
  }
}

class _AuthScreenBody extends StatefulWidget {
  const _AuthScreenBody({
    Key key,
  }) : super(key: key);

  @override
  __AuthScreenBodyState createState() => __AuthScreenBodyState();
}

class __AuthScreenBodyState extends State<_AuthScreenBody> {
  final _formKey = GlobalKey<FormState>();

  final _authValidator = AuthorizationValidator();
  var _showNextButton = false;

  void _onNameChanged(String name) {
    if (name.length > 3 && !_showNextButton) {
      _showNextButton = true;
      setState(() {});
    } else if (name.length < 4 && _showNextButton) {
      _showNextButton = false;
      setState(() {});
    }
  }

  void _onCreateUser() {
    if (_formKey.currentState.validate()) {
      getIt
          .get<EditUserBloc>()
          .add(UserCreated(createUser: CreateUser(name: _authValidator.name)));
    }
  }

  void _listenForUserState(BuildContext context, EditUserBlocState state) {
    state.maybeMap(
      error: (error) {
        Scaffold.of(context).showSnackBar(SnackBar(
          content: Text(error.msg),
          duration: const Duration(seconds: 5),
        ));
      },
      userCreatedSuccessfully: (_) {
        // Close all screens which may be opened while registration
        Navigator.popUntil(context, ModalRoute.withName('/'));
      },
      orElse: () {},
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<EditUserBloc, EditUserBlocState>(
      listener: _listenForUserState,
      cubit: getIt.get<EditUserBloc>(),
      child: Form(
        key: _formKey,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        onWillPop: () async => false,
        child: Column(
          children: [
            const AuthorizationLoadingWidget(),
            const Spacer(),
            Text(
              S.of(context).looksLikeYouAreHereFirstTime,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: bodyPaddingValue),
              child: TextFormField(
                onChanged: _onNameChanged,
                validator: _authValidator.validateUserName,
                textCapitalization: TextCapitalization.words,
                decoration: InputDecoration(
                  labelText: S.of(context).enterYourName,
                ),
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: bodyPaddingValue),
              child: _NextButton(
                onTap: _showNextButton ? _onCreateUser : null,
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

class _NextButton extends StatelessWidget {
  const _NextButton({
    Key key,
    @required this.onTap,
  }) : super(key: key);
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Align(
      alignment: Alignment.centerRight,
      child: FloatingActionButton(
        onPressed: onTap,
        backgroundColor: onTap == null ? theme.disabledColor : null,
        child: const Icon(Icons.navigate_next),
      ),
    );
  }
}
