import '../../data/repositories/auth_repository.dart';
import '../entities/user_entity.dart';

class LoginUser {
  final AuthRepository repository;

  LoginUser(this.repository);

  Future<UserEntity> execute(String email, String password) async {
    final response = await repository.login(email, password);
    return UserEntity(id: response.userId, email: email);
  }
}
