import 'package:dash_chat/dash_chat.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nant_client/bloc/edit_room_bloc/edit_room_bloc.dart';
import 'package:nant_client/bloc/rooms_bloc/rooms_bloc.dart';
import 'package:nant_client/bloc/theme_bloc/theme_bloc.dart';
import 'package:nant_client/bloc/user_bloc/user_bloc.dart';
import 'package:nant_client/generated/l10n.dart';
import 'package:nant_client/models/message/message.dart';
import 'package:nant_client/models/room/room.dart';
import 'package:nant_client/ui/widgets/layouts/safe_scaffold.dart';
import 'package:nant_client/utils/dash_chat_utils/mappers.dart';
import 'package:nant_client/utils/get_it/get_it.dart';

/// This screen receive [roomName] and starts watching for updating in this room
class ChatScreen extends StatelessWidget {
  const ChatScreen({
    Key key,
    @required this.roomName,
  }) : super(key: key);
  static const routeName = "/ChatScreenRoute";
  final String roomName;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RoomsBloc, RoomsBlocState>(
      cubit: getIt.get<RoomsBloc>(),
      builder: (context, state) {
        return state.map(
          initial: (_) => const SizedBox.shrink(),
          roomsLoaded: (loaded) {
            final room = loaded.rooms.firstWhere(
              (element) => element.name == roomName,
              orElse: () => null,
            );
            return _ChatLoadedScreen(
              room: room ??
                  Room(
                    name: roomName,
                    messagesCount: 0,
                    messages: [],
                  ),
            );
          },
        );
      },
    );
  }
}

class _ChatLoadedScreen extends StatelessWidget {
  const _ChatLoadedScreen({
    Key key,
    @required this.room,
  }) : super(key: key);
  final Room room;

  @override
  Widget build(BuildContext context) {
    return SafeScaffold(
      appBar: AppBar(
        title: Text(room.name),
      ),
      body: _ChatScreenBody(room: room),
    );
  }
}

class _ChatScreenBody extends StatefulWidget {
  const _ChatScreenBody({
    Key key,
    @required this.room,
  }) : super(key: key);
  final Room room;

  @override
  __ChatScreenBodyState createState() => __ChatScreenBodyState();
}

class __ChatScreenBodyState extends State<_ChatScreenBody> {
  var _isDarkTheme = false;

  @override
  void initState() {
    if (widget.room.messages.length < 15) {
      _onNewMessagesRequested();
    }
    _listenForThemeChanging(Object(), getIt.get<ThemeBloc>().state);
    super.initState();
  }

  void _onMessageSent(ChatMessage message) {
    getIt.get<EditRoomBloc>().add(MessageSent(
          roomName: widget.room.name,
          createMessage: CreateMessage(
            text: message.text,
            createdAt: message.createdAt,
          ),
        ));
  }

  void _onNewMessagesRequested() {
    getIt
        .get<EditRoomBloc>()
        .add(NextPageRequested(roomName: widget.room.name));
  }

  void _listenForThemeChanging(_, ThemeBlocState state) {
    state.maybeMap(
      orElse: () {},
      themeLoaded: (loaded) => loaded.appTheme.map(
        light: (_) => _isDarkTheme = false,
        dark: (_) => _isDarkTheme = true,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final localization = S.of(context);
    final messages = widget.room.messages;
    return BlocListener<ThemeBloc, ThemeBlocState>(
      cubit: getIt.get<ThemeBloc>(),
      listener: _listenForThemeChanging,
      child: BlocBuilder<UserBloc, UserBlocState>(
        cubit: getIt.get<UserBloc>(),
        builder: (context, state) {
          return state.maybeMap(
            orElse: () => const SizedBox.shrink(),
            loaded: (loaded) {
              return DashChat(
                inverted: true,
                inputContainerStyle: BoxDecoration(
                  color: theme.dialogBackgroundColor,
                ),
                messageDecorationBuilder: (_, isUser) {
                  if (_isDarkTheme) {
                    return BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: isUser ? theme.cardColor : theme.accentColor,
                    );
                  } else {
                    return BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: isUser ? theme.accentColor : theme.cardColor,
                    );
                  }
                },
                textCapitalization: TextCapitalization.sentences,
                inputDecoration: InputDecoration(
                  border: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  contentPadding: EdgeInsets.zero,
                  hintText: localization.enterYourMessage,
                ),
                inputMaxLines: 3,
                sendButtonBuilder: (onTap) => IconButton(
                  icon: const Icon(
                    CupertinoIcons.arrow_right_circle,
                    size: 30,
                  ),
                  onPressed: () => onTap(),
                ),
                onLoadEarlier: () async => _onNewMessagesRequested(),
                messages: MessagesMapper.messagesToDashMessages(messages),
                user: ChatUserMapper.chatUserToDash(
                  UserMapper.userToChatUser(loaded.user),
                ),
                onSend: _onMessageSent,
              );
            },
          );
        },
      ),
    );
  }
}

class ChatScreenArgument {
  ChatScreenArgument(this.roomName);

  final String roomName;
}
