import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nant_client/bloc/app_host_bloc/edit_app_host_bloc.dart';
import 'package:nant_client/bloc/authorization_bloc/authorization_bloc.dart';
import 'package:nant_client/bloc/edit_user_bloc/edit_user_bloc.dart';
import 'package:nant_client/bloc/theme_bloc/theme_bloc.dart';
import 'package:nant_client/bloc/user_bloc/user_bloc.dart';
import 'package:nant_client/generated/l10n.dart';
import 'package:nant_client/models/app_config/app_config.dart';
import 'package:nant_client/models/user/user.dart';
import 'package:nant_client/ui/widgets/authorization_widgets/authorization_loading_widget.dart';
import 'package:nant_client/ui/widgets/layouts/adaptive_app_bar.dart';
import 'package:nant_client/ui/widgets/layouts/adaptive_layout_builder.dart';
import 'package:nant_client/ui/widgets/layouts/safe_scaffold.dart';
import 'package:nant_client/ui/widgets/padding/paddings.dart';
import 'package:nant_client/ui/widgets/profile_screen/language_picker.dart';
import 'package:nant_client/utils/get_it/get_it.dart';
import 'package:nant_client/utils/validators/auth_validator.dart';

class AuthorizationScreen extends StatelessWidget {
  const AuthorizationScreen({
    Key? key,
  }) : super(key: key);

  static const routeName = "authorization screen";

  void _onPickLanguage(BuildContext context) {
    showLanguagePicker(context: context);
  }

  void _onChangeTheme() {
    getIt.get<ThemeBloc>().add(const ThemeSwitched());
  }

  @override
  Widget build(BuildContext context) {
    return SafeScaffold(
      body: Column(
        children: [
          AdaptiveAppBar(
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
          const Flexible(child: _AuthScreenBody()),
        ],
      ),
    );
  }
}

class _AuthScreenLayout extends StatelessWidget {
  const _AuthScreenLayout({Key? key, required this.child}) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return DesktopLayoutBuilder(
      builder: (context, desktop) {
        return Row(
          children: [
            if (desktop) const Spacer(),
            Expanded(flex: 3, child: child),
            if (desktop) const Spacer(),
          ],
        );
      },
    );
  }
}

class _AuthScreenBody extends StatefulWidget {
  const _AuthScreenBody({
    Key? key,
  }) : super(key: key);

  @override
  __AuthScreenBodyState createState() => __AuthScreenBodyState();
}

class __AuthScreenBodyState extends State<_AuthScreenBody> {
  final _formKey = GlobalKey<FormState>();
  final _nameFocus = FocusNode();
  final _hostFocus = FocusNode();
  late AuthorizationValidator _authValidator;
  var _focusRequested = false;
  late String _defaultHost;
  var _useSecureConnection = false;
  var _showNextButton = false;

  @override
  void initState() {
    final appConfig = getIt<AppConfig>();
    _defaultHost = appConfig.defaultHost;
    _useSecureConnection = appConfig.useSecureConnection;
    _authValidator = AuthorizationValidator(host: _defaultHost);
    super.initState();
  }

  @override
  void didChangeDependencies() {
    if (!_focusRequested) {
      _focusRequested = true;
      FocusScope.of(context).requestFocus(_nameFocus);
    }
    super.didChangeDependencies();
  }

  Future<void> _onFieldChanged() async {
    // Wait when validator will be executed
    await Future.delayed(Duration.zero);
    if (!_showNextButton && _authValidator.valid) {
      setState(() {
        _showNextButton = true;
      });
    } else if (_showNextButton && !_authValidator.valid) {
      setState(() {
        _showNextButton = false;
      });
    }
  }

  void _onSubmitUserName() {
    FocusScope.of(context).requestFocus(_hostFocus);
  }

  void _onAuthorize() {
    if (_formKey.currentState!.validate()) {
      getIt<AuthorizationBloc>().add(
        Authorize(
          createUser: CreateUser(name: _authValidator.name!),
          host: _authValidator.host!,
          useSecureConnection: _useSecureConnection,
        ),
      );
    }
  }

  void _listenForAuthState(BuildContext context, AuthorizationBlocState state) {
    state.maybeMap(
      orElse: () {},
      authorized: (_) => Navigator.popUntil(context, ModalRoute.withName('/')),
    );
  }

  void _listenForUserState(BuildContext context, EditUserBlocState state) {
    state.maybeMap(
      error: (error) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(error.msg),
            duration: const Duration(seconds: 5),
          ),
        );
      },
      orElse: () {},
    );
  }

  void _listenForAppHosState(BuildContext context, EditAppHostBlocState state) {
    state.maybeMap(
      error: (_) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(S.of(context).failedToSetHost),
            duration: const Duration(seconds: 5),
          ),
        );
      },
      orElse: () {},
    );
  }

  @override
  Widget build(BuildContext context) {
    final localization = S.of(context);

    final userName = getIt<UserBloc>().state.maybeMap(orElse: () => null, authorized: (a) => a.user.name);
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        _AuthScreenLayout(
          child: BlocListener<AuthorizationBloc, AuthorizationBlocState>(
            bloc: getIt(),
            listener: _listenForAuthState,
            child: BlocListener<EditUserBloc, EditUserBlocState>(
              listener: _listenForUserState,
              bloc: getIt(),
              child: BlocListener<EditAppHostBloc, EditAppHostBlocState>(
                bloc: getIt(),
                listener: _listenForAppHosState,
                child: Form(
                  key: _formKey,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  onWillPop: () async => false,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: bodyPaddingValue,
                    ),
                    child: Column(
                      children: [
                        const Spacer(),
                        Text(
                          localization.looksLikeYouAreHereFirstTime,
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 20),
                        TextFormField(
                          onChanged: (_) => _onFieldChanged(),
                          initialValue: userName,
                          focusNode: _nameFocus,
                          validator: _authValidator.validateUserName,
                          textCapitalization: TextCapitalization.words,
                          decoration: InputDecoration(
                            labelText: localization.enterYourName,
                          ),
                          onFieldSubmitted: (_) => _onSubmitUserName(),
                        ),
                        TextFormField(
                          onChanged: (_) => _onFieldChanged(),
                          initialValue: _defaultHost,
                          focusNode: _hostFocus,
                          validator: _authValidator.validateHost,
                          decoration: InputDecoration(
                            labelText: localization.hostName,
                            prefixText: "http${_useSecureConnection ? "s" : ""}://",
                          ),
                          onFieldSubmitted: (_) => _onAuthorize(),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: CheckboxListTile(
                            contentPadding: EdgeInsets.zero,
                            title: Text(localization.useSecureConnection),
                            value: _useSecureConnection,
                            onChanged: (v) => setState(() => _useSecureConnection = !_useSecureConnection),
                          ),
                        ),
                        const Spacer(),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(bodyPaddingValue),
          child: _NextButton(
            onTap: _showNextButton ? _onAuthorize : null,
          ),
        ),
        const Align(
          alignment: Alignment.topCenter,
          child: AuthorizationLoadingWidget(),
        ),
      ],
    );
  }
}

class _NextButton extends StatelessWidget {
  const _NextButton({
    Key? key,
    required this.onTap,
  }) : super(key: key);
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return FloatingActionButton(
      onPressed: onTap,
      backgroundColor: onTap == null ? theme.disabledColor : null,
      child: const Icon(Icons.navigate_next),
    );
  }
}
