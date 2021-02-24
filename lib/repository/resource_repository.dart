import 'package:flutter/foundation.dart';

/// Так как все репозитории работают с ресурсами, в них должны быть функции
/// для инициализации [initialize] и очистки [dispose] ресурсов
abstract class ResourceRepository {
  /// Функция для инициализации репозитория. Здесь можно открывать соединение с
  /// базой данных
  @mustCallSuper
  Future<void> initialize() async {}

  /// Функция для очистки ресурсов репозитория. Здесь нужно закрыть соединение с
  /// базой данных
  @mustCallSuper
  Future<void> dispose() async {}
}
