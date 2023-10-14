import 'package:bloc_clean_architecture_app/core/utils/typedef.dart';
import 'package:bloc_clean_architecture_app/src/authentication/domain/repositories/authentication_repository.dart';

class CreateUser {
  final AuthenticationRepository _repository;

  const CreateUser(this._repository);

  ResultVoid createUser({
    required String createdAt,
    required String name,
    required String avatar,
  }) async =>
      _repository.createUser(createdAt: createdAt, name: name, avatar: avatar);
}
