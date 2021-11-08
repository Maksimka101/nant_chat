// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ru locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'ru';

  static String m0(error) => "Не удалось создать пользователя: ${error}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "authorization": MessageLookupByLibrary.simpleMessage("Авторизация"),
        "createRoom": MessageLookupByLibrary.simpleMessage("Создать комнату"),
        "currentLanguage":
            MessageLookupByLibrary.simpleMessage("Текущий язык:"),
        "enableDarkTheme":
            MessageLookupByLibrary.simpleMessage("Включить темную тему"),
        "english": MessageLookupByLibrary.simpleMessage("Английский"),
        "enterFirstMessage":
            MessageLookupByLibrary.simpleMessage("Первое сообщение"),
        "enterYourMessage":
            MessageLookupByLibrary.simpleMessage("Введите сообщение"),
        "enterYourName":
            MessageLookupByLibrary.simpleMessage("Введите свое имя"),
        "enterYourRoomName":
            MessageLookupByLibrary.simpleMessage("Название комнаты"),
        "failedToCreateUserDueToError": m0,
        "failedToSetHost": MessageLookupByLibrary.simpleMessage(
            "Не удалось сохранить адрес сервера"),
        "hostIsTooShort": MessageLookupByLibrary.simpleMessage(
            "Название сервера должно содержать не менее 4-х символов"),
        "hostName":
            MessageLookupByLibrary.simpleMessage("Введите адрес сервера"),
        "looksLikeYouAreHereFirstTime": MessageLookupByLibrary.simpleMessage(
            "Похоже вы здесь впервые.\nКак вас зовут и какой адрес сервера, с которым будет работать приложение?"),
        "nameMustHaveNoMoreThan16Character":
            MessageLookupByLibrary.simpleMessage(
                "Имя должно содержать не более 16-ти символов"),
        "nantChat": MessageLookupByLibrary.simpleMessage("Nant Chat"),
        "pleaseEnterRoomName":
            MessageLookupByLibrary.simpleMessage("Введите название комнаты"),
        "pleaseSelectRoom":
            MessageLookupByLibrary.simpleMessage("Пожалуйста выберите комнату"),
        "profile": MessageLookupByLibrary.simpleMessage("Профиль"),
        "roomMustHaveNoMoreThan16Character":
            MessageLookupByLibrary.simpleMessage(
                "Комната должна содержать не более 25-ти символов"),
        "roomNameMustHaveAtLeast4Character":
            MessageLookupByLibrary.simpleMessage(
                "Комната должна содержать не менее 4-х символов"),
        "rooms": MessageLookupByLibrary.simpleMessage("Комнаты"),
        "russian": MessageLookupByLibrary.simpleMessage("Русский"),
        "signOut": MessageLookupByLibrary.simpleMessage("Выйти"),
        "tapToChangeLanguage":
            MessageLookupByLibrary.simpleMessage("Нажмите для смены языка"),
        "toCreateANewRoomYouNeedTo": MessageLookupByLibrary.simpleMessage(
            "Для создания комнаты определитесь с ее именем и напишите первое сообщение"),
        "useSecureConnection": MessageLookupByLibrary.simpleMessage(
            "Использовать защищенное соединение"),
        "userNameMustHaveAtLeast4Character":
            MessageLookupByLibrary.simpleMessage(
                "Имя должно содержать не менее 4-х символов"),
        "waitASecondPlease":
            MessageLookupByLibrary.simpleMessage("Подождите немного")
      };
}
