import 'package:bloc_clean_architecture_app/core/usecase/usecase.dart';
import 'package:bloc_clean_architecture_app/core/utils/typedef.dart';
import 'package:bloc_clean_architecture_app/src/authentication/domain/entities/user.dart';
import 'package:bloc_clean_architecture_app/src/authentication/domain/repositories/authentication_repository.dart';

class GetUsers extends UsecaseWithoutParams {
  final AuthenticationRepository _repository;
  const GetUsers(this._repository);

  @override
  ResultFuture<List<User>> call() async => _repository.getUsers();
}
