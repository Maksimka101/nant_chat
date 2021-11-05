import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:nant_client/repository/resource_repository.dart';

/// База для большинства репозиториев
/// Почти все репозитории должны быть реактивными, то есть в них должна быть
/// функция загрузки данных, которая загружает и добавляет их в [dataStream],
/// а не возвращает в качестве аргумента
///
/// Пример использования:
/// ```
/// class User {}
///
/// class UserRepository extends BaseRepository<User> {
///   DB _db;
///
///   /// Открытие базы данных
///   @override
///   Future<void> initialize() async {
///     _db = await openDb();
///     super.initialize();
///   }
///
///   /// Загрузка пользователя и добавление его в [dataStream]
///   Future<void> loadUser() async {
///     final user = await _db.load<User>();
///     emit(user);
///   }
///
///   /// Закрытие базы данных
///   @override
///   Future<void> dispose() async {
///     await _db.close();
///     super.dispose();
///   }
/// }
/// ```
abstract class BaseRepository<T> extends ResourceRepository {
  final _dataStreamController = StreamController<T>.broadcast();
  T? _data;

  /// Поток данных типа [T]
  Stream<T> get dataStream => _dataStreamController.stream;

  /// Последнее значение типа [T], которое попало в valueStream
  T? get data => _data;

  /// Добавляет [newData] в [dataStream] и обновляет [data]
  @protected
  void emit(T newData) {
    _data = newData;
    _dataStreamController.add(newData);
  }

  @protected
  // ignore: avoid_positional_boolean_parameters
  void assertInitialized(bool assertValue) {
    assert(assertValue, "Don't forget to call initialize()");
  }

  /// Функция для очистки ресурсов репозитория. Здесь нужно закрыть соединение с
  /// базой данных
  @override
  @mustCallSuper
  Future<void> dispose() async {
    await _dataStreamController.close();
    await super.dispose();
  }
}
