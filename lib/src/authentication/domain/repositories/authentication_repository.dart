import 'package:bloc_clean_architecture_app/core/errors/failure.dart';
import 'package:bloc_clean_architecture_app/src/authentication/domain/entities/user.dart';
import 'package:dartz/dartz.dart';

abstract class AuthenticationRepository {
  const AuthenticationRepository();

  Future<Either<Failure, void>> createUser({
    required String createdAt,
    required String name,
    required String avatar,
  });

  Future<(Exception, List<User>)> getUsers();
}
