import 'package:nant_client/models/user/user.dart';
import 'package:nant_client/repository/base_repository.dart';

abstract class UserRepository extends BaseRepository<User> {
  Future<void> loadUser();

  Future<void> createUser(CreateUser createUser);

  Future<void> updateUser(UpdateUser updateUser);

  Future<void> deleteUser();
}
