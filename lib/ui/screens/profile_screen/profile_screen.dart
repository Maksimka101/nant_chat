import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nant_client/bloc/edit_user_bloc/edit_user_bloc.dart';
import 'package:nant_client/bloc/user_bloc/user_bloc.dart';
import 'package:nant_client/generated/l10n.dart';
import 'package:nant_client/models/user/user.dart';
import 'package:nant_client/ui/widgets/common/circle_user_avatar.dart';
import 'package:nant_client/ui/widgets/layouts/adaptive_app_bar.dart';
import 'package:nant_client/ui/widgets/layouts/safe_scaffold.dart';
import 'package:nant_client/ui/widgets/profile_screen/language_picker.dart';
import 'package:nant_client/ui/widgets/profile_screen/theme_switcher.dart';
import 'package:nant_client/utils/get_it/get_it.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final localization = S.of(context);
    return SafeScaffold(
      body: Column(
        children: [
          AdaptiveAppBar(
            title: Text(localization.profile),
          ),
          Flexible(
            child: BlocBuilder<UserBloc, UserBlocState>(
              cubit: getIt.get<UserBloc>(),
              builder: (context, state) {
                return state.maybeMap(
                  loaded: (loaded) => _ProfileScreenBody(user: loaded.user),
                  orElse: () => const SizedBox.shrink(),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _ProfileScreenBody extends StatelessWidget {
  const _ProfileScreenBody({
    Key key,
    @required this.user,
  }) : super(key: key);
  final User user;

  void _onSignOut() {
    getIt.get<EditUserBloc>().add(const UserDeleted());
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      children: [
        const SizedBox(height: 8),
        ListTile(
          leading: CircleUserAvatar(name: user.name),
          title: Text(user.name),
          trailing: IconButton(
            icon: const Icon(Icons.exit_to_app),
            onPressed: _onSignOut,
          ),
        ),
        const Divider(),
        const ThemeSwitcher(),
        const Divider(),
        const LanguagePicker(),
      ],
    );
  }
}
