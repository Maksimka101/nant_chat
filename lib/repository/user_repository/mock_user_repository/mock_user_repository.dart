import 'package:nant_client/models/user/user.dart';
import 'package:nant_client/repository/user_repository/user_repository.dart';

class MockUserRepository extends UserRepository {
  set user(User user) {
    emit(user);
  }

  @override
  Future<void> createUser(CreateUser createUser) async {
    emit(User(name: createUser.name));
  }

  @override
  Future<void> loadUser() async {
    emit(data ?? const User(name: "mock user"));
  }

  @override
  Future<void> updateUser(UpdateUser updateUser) async {
    emit(User(name: updateUser.name));
  }

  @override
  Future<void> deleteUser() async {
    emit(null);
  }
}
