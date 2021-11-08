import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nant_client/bloc/user_bloc/user_bloc.dart';
import 'package:nant_client/generated/l10n.dart';
import 'package:nant_client/ui/screens/profile_screen/profile_screen.dart';
import 'package:nant_client/ui/screens/rooms_screen/rooms_screen.dart';
import 'package:nant_client/ui/widgets/common/circle_user_avatar.dart';
import 'package:nant_client/ui/widgets/layouts/safe_scaffold.dart';
import 'package:nant_client/utils/get_it/get_it.dart';

class MainMobileAppScreen extends StatefulWidget {
  @override
  _MainMobileAppScreenState createState() => _MainMobileAppScreenState();
}

class _MainMobileAppScreenState extends State<MainMobileAppScreen> {
  var _tabIndex = 0;

  void _onTapSelected(int index) {
    if (_tabIndex != index) {
      _tabIndex = index;
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    final localization = S.of(context);
    return SafeScaffold(
      body: Stack(
        children: [
          Offstage(
            offstage: _tabIndex != 0,
            child: const RoomsScreen(),
          ),
          Offstage(
            offstage: _tabIndex != 1,
            child: const ProfileScreen(),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onTapSelected,
        currentIndex: _tabIndex,
        items: [
          BottomNavigationBarItem(
            icon: const Icon(Icons.message_rounded, size: 30),
            label: localization.rooms,
          ),
          BottomNavigationBarItem(
            icon: BlocBuilder<UserBloc, UserBlocState>(
              bloc: getIt.get<UserBloc>(),
              builder: (context, state) {
                return state.maybeMap(
                  authorized: (loaded) => CircleUserAvatar(
                    name: loaded.user.name,
                    radius: 15,
                  ),
                  orElse: () => const Icon(Icons.account_circle_rounded),
                );
              },
            ),
            label: localization.profile,
          ),
        ],
      ),
    );
  }
}
