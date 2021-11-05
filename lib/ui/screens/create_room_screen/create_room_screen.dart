import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nant_client/bloc/edit_room_bloc/edit_room_bloc.dart';
import 'package:nant_client/generated/l10n.dart';
import 'package:nant_client/models/message/message.dart';
import 'package:nant_client/models/room/room.dart';
import 'package:nant_client/ui/screens/chat_screen/chat_screen.dart';
import 'package:nant_client/ui/widgets/layouts/adaptive_app_bar.dart';
import 'package:nant_client/ui/widgets/layouts/adaptive_layout_builder.dart';
import 'package:nant_client/ui/widgets/layouts/safe_scaffold.dart';
import 'package:nant_client/ui/widgets/padding/paddings.dart';
import 'package:nant_client/utils/get_it/get_it.dart';
import 'package:nant_client/utils/validators/create_room_validator.dart';
import 'package:nant_client/utils/validators/message_validator.dart';

class CreateRoomScreen extends StatelessWidget {
  const CreateRoomScreen({
    Key? key,
  }) : super(key: key);
  static const routeName = "CreateRoomScreen";

  @override
  Widget build(BuildContext context) {
    return SafeScaffold(
      body: Column(
        children: [
          AdaptiveAppBar(
            title: Text(S.of(context).createRoom),
          ),
          const Flexible(child: _CreateRoomScreenBody()),
        ],
      ),
    );
  }
}

class _CreateRoomScreenBody extends StatefulWidget {
  const _CreateRoomScreenBody({
    Key? key,
  }) : super(key: key);

  @override
  __CreateRoomScreenBodyState createState() => __CreateRoomScreenBodyState();
}

class __CreateRoomScreenBodyState extends State<_CreateRoomScreenBody> {
  final _formKey = GlobalKey<FormState>();
  final _roomValidator = CreateRoomValidator();
  final _messageValidator = MessageValidator();
  final _roomFocus = FocusNode();
  final _messageFocus = FocusNode();
  var _firstFocusRequested = false;
  var _valid = false;

  @override
  void didChangeDependencies() {
    if (!_firstFocusRequested) {
      _firstFocusRequested = true;
      FocusScope.of(context).requestFocus(_roomFocus);
    }
    super.didChangeDependencies();
  }

  void _onChanged() {
    final valid = _formKey.currentState!.validate();
    if (valid && !_valid) {
      _valid = valid;
      setState(() {});
    } else if (_valid && !valid) {
      _valid = valid;
      setState(() {});
    }
  }

  void _onRoomCreated() {
    if (_formKey.currentState!.validate()) {
      getIt.get<EditRoomBloc>().add(
            NewRoomCreated(
              createRoom: CreateRoom(
                name: _roomValidator.roomName!,
                initMessage: CreateMessage(
                  text: _messageValidator.message!,
                  createdAt: DateTime.now(),
                ),
              ),
            ),
          );
    }
  }

  void _listenForRoomBloc(BuildContext context, EditRoomBlocState state) {
    state.map(
      error: (error) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(error.message)),
        );
      },
      newRoomCreatedSuccessful: (_) {
        Navigator.popUntil(context, ModalRoute.withName('/'));
        Navigator.pushNamed(
          context,
          ChatScreen.routeName,
          arguments: ChatScreenArgument(_roomValidator.roomName!),
        );
      },
      initial: (Initial value) {},
      newRoomCreationStarted: (NewRoomCreationStarted value) {},
    );
  }

  void _roomEditingFinished() {
    FocusScope.of(context).requestFocus(_messageFocus);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        DesktopLayoutBuilder(
          builder: (context, desktop) {
            return Row(
              children: [
                if (desktop) const Spacer(),
                Expanded(
                  flex: 2,
                  child: BlocListener<EditRoomBloc, EditRoomBlocState>(
                    bloc: getIt.get<EditRoomBloc>(),
                    listener: _listenForRoomBloc,
                    child: Form(
                      onChanged: _onChanged,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      key: _formKey,
                      child: Column(
                        children: [
                          const Spacer(),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: bodyPaddingValue,
                            ),
                            child: Text(
                              S.of(context).toCreateANewRoomYouNeedTo,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          const SizedBox(height: 15),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: bodyPaddingValue,
                            ),
                            child: TextFormField(
                              focusNode: _roomFocus,
                              validator: _roomValidator.validateRoomName,
                              decoration: InputDecoration(
                                labelText: S.of(context).enterYourRoomName,
                              ),
                              onFieldSubmitted: (_) => _roomEditingFinished(),
                            ),
                          ),
                          const SizedBox(height: 20),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: bodyPaddingValue,
                            ),
                            child: TextFormField(
                              focusNode: _messageFocus,
                              validator: _messageValidator.validateMessage,
                              decoration: InputDecoration(
                                labelText: S.of(context).enterFirstMessage,
                              ),
                              onFieldSubmitted: (_) => _onRoomCreated(),
                            ),
                          ),
                          const Spacer(),
                        ],
                      ),
                    ),
                  ),
                ),
                if (desktop) const Spacer(),
              ],
            );
          },
        ),
        Padding(
          padding: const EdgeInsets.all(8),
          child: FloatingActionButton(
            backgroundColor: _valid ? null : theme.disabledColor,
            onPressed: _valid ? _onRoomCreated : null,
            child: const Icon(Icons.navigate_next),
          ),
        ),
        const _CreationInProgressWidget(),
      ],
    );
  }
}

class _CreationInProgressWidget extends StatelessWidget {
  const _CreationInProgressWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EditRoomBloc, EditRoomBlocState>(
      bloc: getIt.get<EditRoomBloc>(),
      builder: (context, state) {
        return state.maybeMap(
          newRoomCreationStarted: (_) => Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.black.withOpacity(0.8),
            child: Stack(
              children: const [
                Center(child: CircularProgressIndicator()),
              ],
            ),
          ),
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }
}
