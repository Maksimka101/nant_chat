import 'package:nant_client/models/user/user.dart';
import 'package:nant_client/repository/user_repository/user_repository.dart';
import 'package:nant_client/utils/hive/hive_box_utils.dart';
import 'package:nant_client/utils/logger/logger.dart';

class HiveUserRepository extends UserRepository {
  late final _userBox = openHiveBox<User?>(_userBoxName);
  static const _userBoxName = "UserBox";
  
  @override
  Future<void> createUser(CreateUser createUser) async {
    final box = await _userBox;
    try {
      final user = User(name: createUser.name);
      await box.put(_userBoxName, user);
      emit(user);
    } catch (e, st) {
      logger.e("Can't create user", e, st);
      rethrow;
    }
  }

  @override
  Future<void> updateUser(UpdateUser updateUser) async {
    final box = await _userBox;
    try {
      final user = User(name: updateUser.name);
      await box.put(_userBoxName, user);
      emit(user);
    } catch (e, st) {
      logger.e("Can't update user", e, st);
      rethrow;
    }
  }

  @override
  Future<void> loadUser() async {
    final box = await _userBox;
    try {
      final user = box.get(_userBoxName);
      emit(user);
    } catch (e, st) {
      logger.e("Can't load user", e, st);
      rethrow;
    }
  }

  @override
  Future<void> deleteUser() async {
    final box = await _userBox;
    try {
      await box.put(_userBoxName, null);
      emit(null);
    } catch (e, st) {
      logger.e("Can't delete user", e, st);
      rethrow;
    }
  }

  @override
  Future<void> dispose() async {
    await _userBox.ifLaunched(() => _userBox.then((value) => value.close()));
    return super.dispose();
  }
}
