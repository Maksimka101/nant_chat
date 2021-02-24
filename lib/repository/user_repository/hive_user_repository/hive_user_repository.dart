import 'package:hive/hive.dart';
import 'package:nant_client/models/user/user.dart';
import 'package:nant_client/repository/user_repository/user_repository.dart';
import 'package:nant_client/utils/logger/logger.dart';

class HiveUserRepository extends UserRepository {
  Box<User> _userBox;
  static const _userBoxName = "UserBox";
  var _initialized = false;

  @override
  Future<void> initialize() async {
    if (!_initialized) {
      _userBox = await Hive.openBox<User>(_userBoxName);
      _initialized = true;
    }
    return super.initialize();
  }

  @override
  Future<void> createUser(CreateUser createUser) async {
    assertInitialized(_userBox != null);
    try {
      final user = User(name: createUser.name);
      await _userBox.put(_userBoxName, user);
      emit(user);
    } catch (e, st) {
      logger.e("Can't create user", e, st);
      rethrow;
    }
  }

  @override
  Future<void> updateUser(UpdateUser updateUser) async {
    assertInitialized(_userBox != null);
    try {
      final user = User(name: updateUser.name);
      await _userBox.put(_userBoxName, user);
      emit(user);
    } catch (e, st) {
      logger.e("Can't update user", e, st);
      rethrow;
    }
  }

  @override
  Future<void> loadUser() async {
    assertInitialized(_userBox != null);
    try {
      final user = _userBox.get(_userBoxName);
      emit(user);
    } catch (e, st) {
      logger.e("Can't load user", e, st);
      rethrow;
    }
  }

  @override
  Future<void> deleteUser() async {
    assertInitialized(_userBox != null);
    try {
      await _userBox.put(_userBoxName, null);
      emit(null);
    } catch (e, st) {
      logger.e("Can't delete user", e, st);
      rethrow;
    }
  }

  @override
  Future<void> dispose() async {
    await _userBox.close();
    return super.dispose();
  }
}
