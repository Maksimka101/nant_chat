// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Nant Chat`
  String get nantChat {
    return Intl.message(
      'Nant Chat',
      name: 'nantChat',
      desc: '',
      args: [],
    );
  }

  /// `Wait a second please`
  String get waitASecondPlease {
    return Intl.message(
      'Wait a second please',
      name: 'waitASecondPlease',
      desc: '',
      args: [],
    );
  }

  /// `Failed to create user due to: {error}`
  String failedToCreateUserDueToError(Object error) {
    return Intl.message(
      'Failed to create user due to: $error',
      name: 'failedToCreateUserDueToError',
      desc: '',
      args: [error],
    );
  }

  /// `Authorization`
  String get authorization {
    return Intl.message(
      'Authorization',
      name: 'authorization',
      desc: '',
      args: [],
    );
  }

  /// `Looks like you are first time here.\nWhat is your name and the address of the server that application will work with?`
  String get looksLikeYouAreHereFirstTime {
    return Intl.message(
      'Looks like you are first time here.\nWhat is your name and the address of the server that application will work with?',
      name: 'looksLikeYouAreHereFirstTime',
      desc: '',
      args: [],
    );
  }

  /// `Enter your name`
  String get enterYourName {
    return Intl.message(
      'Enter your name',
      name: 'enterYourName',
      desc: '',
      args: [],
    );
  }

  /// `User name must have at least 4 characters`
  String get userNameMustHaveAtLeast4Character {
    return Intl.message(
      'User name must have at least 4 characters',
      name: 'userNameMustHaveAtLeast4Character',
      desc: '',
      args: [],
    );
  }

  /// `Name must have no more than 16 characters`
  String get nameMustHaveNoMoreThan16Character {
    return Intl.message(
      'Name must have no more than 16 characters',
      name: 'nameMustHaveNoMoreThan16Character',
      desc: '',
      args: [],
    );
  }

  /// `Rooms`
  String get rooms {
    return Intl.message(
      'Rooms',
      name: 'rooms',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get profile {
    return Intl.message(
      'Profile',
      name: 'profile',
      desc: '',
      args: [],
    );
  }

  /// `Sign out`
  String get signOut {
    return Intl.message(
      'Sign out',
      name: 'signOut',
      desc: '',
      args: [],
    );
  }

  /// `Create Room`
  String get createRoom {
    return Intl.message(
      'Create Room',
      name: 'createRoom',
      desc: '',
      args: [],
    );
  }

  /// `To create a new room, you need to come up with its name and write the first message`
  String get toCreateANewRoomYouNeedTo {
    return Intl.message(
      'To create a new room, you need to come up with its name and write the first message',
      name: 'toCreateANewRoomYouNeedTo',
      desc: '',
      args: [],
    );
  }

  /// `Enter your room name`
  String get enterYourRoomName {
    return Intl.message(
      'Enter your room name',
      name: 'enterYourRoomName',
      desc: '',
      args: [],
    );
  }

  /// `Enter first message`
  String get enterFirstMessage {
    return Intl.message(
      'Enter first message',
      name: 'enterFirstMessage',
      desc: '',
      args: [],
    );
  }

  /// `Please, enter room name`
  String get pleaseEnterRoomName {
    return Intl.message(
      'Please, enter room name',
      name: 'pleaseEnterRoomName',
      desc: '',
      args: [],
    );
  }

  /// `Room name must have at least 4 characters`
  String get roomNameMustHaveAtLeast4Character {
    return Intl.message(
      'Room name must have at least 4 characters',
      name: 'roomNameMustHaveAtLeast4Character',
      desc: '',
      args: [],
    );
  }

  /// `Room must have no more than 25 characters`
  String get roomMustHaveNoMoreThan16Character {
    return Intl.message(
      'Room must have no more than 25 characters',
      name: 'roomMustHaveNoMoreThan16Character',
      desc: '',
      args: [],
    );
  }

  /// `Enter your message`
  String get enterYourMessage {
    return Intl.message(
      'Enter your message',
      name: 'enterYourMessage',
      desc: '',
      args: [],
    );
  }

  /// `Enable dark theme`
  String get enableDarkTheme {
    return Intl.message(
      'Enable dark theme',
      name: 'enableDarkTheme',
      desc: '',
      args: [],
    );
  }

  /// `Current language:`
  String get currentLanguage {
    return Intl.message(
      'Current language:',
      name: 'currentLanguage',
      desc: '',
      args: [],
    );
  }

  /// `Tap to change language`
  String get tapToChangeLanguage {
    return Intl.message(
      'Tap to change language',
      name: 'tapToChangeLanguage',
      desc: '',
      args: [],
    );
  }

  /// `English`
  String get english {
    return Intl.message(
      'English',
      name: 'english',
      desc: '',
      args: [],
    );
  }

  /// `Russian`
  String get russian {
    return Intl.message(
      'Russian',
      name: 'russian',
      desc: '',
      args: [],
    );
  }

  /// `Please select room`
  String get pleaseSelectRoom {
    return Intl.message(
      'Please select room',
      name: 'pleaseSelectRoom',
      desc: '',
      args: [],
    );
  }

  /// `Server name must have at least 4 characters`
  String get hostIsTooShort {
    return Intl.message(
      'Server name must have at least 4 characters',
      name: 'hostIsTooShort',
      desc: '',
      args: [],
    );
  }

  /// `Enter server address`
  String get hostName {
    return Intl.message(
      'Enter server address',
      name: 'hostName',
      desc: '',
      args: [],
    );
  }

  /// `User secure connection`
  String get useSecureConnection {
    return Intl.message(
      'User secure connection',
      name: 'useSecureConnection',
      desc: '',
      args: [],
    );
  }

  /// `Failed to save server address`
  String get failedToSetHost {
    return Intl.message(
      'Failed to save server address',
      name: 'failedToSetHost',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ru'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
