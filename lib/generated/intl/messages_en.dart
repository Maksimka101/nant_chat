// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  static m0(error) => "Failed to create user due to: ${error}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function> {
    "authorization" : MessageLookupByLibrary.simpleMessage("Authorization"),
    "createRoom" : MessageLookupByLibrary.simpleMessage("Create Room"),
    "currentLanguage" : MessageLookupByLibrary.simpleMessage("Current language:"),
    "enableDarkTheme" : MessageLookupByLibrary.simpleMessage("Enable dark theme"),
    "english" : MessageLookupByLibrary.simpleMessage("English"),
    "enterFirstMessage" : MessageLookupByLibrary.simpleMessage("Enter first message"),
    "enterYourMessage" : MessageLookupByLibrary.simpleMessage("Enter your message"),
    "enterYourName" : MessageLookupByLibrary.simpleMessage("Enter your name"),
    "enterYourRoomName" : MessageLookupByLibrary.simpleMessage("Enter your room name"),
    "failedToCreateUserDueToError" : m0,
    "looksLikeYouAreHereFirstTime" : MessageLookupByLibrary.simpleMessage("Looks like you are first time here.\nWhat is your name?"),
    "nameMustHaveNoMoreThan16Character" : MessageLookupByLibrary.simpleMessage("Name must have no more than 16 character"),
    "nantChat" : MessageLookupByLibrary.simpleMessage("Nant Chat"),
    "pleaseEnterRoomName" : MessageLookupByLibrary.simpleMessage("Please, enter room name"),
    "pleaseSelectRoom" : MessageLookupByLibrary.simpleMessage("Please select room"),
    "profile" : MessageLookupByLibrary.simpleMessage("Profile"),
    "roomMustHaveNoMoreThan16Character" : MessageLookupByLibrary.simpleMessage("Room must have no more than 25 character"),
    "roomNameMustHaveAtLeast4Character" : MessageLookupByLibrary.simpleMessage("Room name must have at least 4 character"),
    "rooms" : MessageLookupByLibrary.simpleMessage("Rooms"),
    "russian" : MessageLookupByLibrary.simpleMessage("Russian"),
    "signOut" : MessageLookupByLibrary.simpleMessage("Sign out"),
    "tapToChangeLanguage" : MessageLookupByLibrary.simpleMessage("Tap to change language"),
    "toCreateANewRoomYouNeedTo" : MessageLookupByLibrary.simpleMessage("To create a new room, you need to come up with its name and write the first message"),
    "userNameMustHaveAtLeast4Character" : MessageLookupByLibrary.simpleMessage("User name must have at least 4 character"),
    "waitASecondPlease" : MessageLookupByLibrary.simpleMessage("Wait a second please")
  };
}
