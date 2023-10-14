import 'package:bloc_clean_architecture_app/core/errors/failure.dart';
import 'package:bloc_clean_architecture_app/core/utils/typedef.dart';
import 'package:bloc_clean_architecture_app/src/authentication/domain/entities/user.dart';
import 'package:dartz/dartz.dart';

abstract class AuthenticationRepository {
  const AuthenticationRepository();

  ResultVoid createUser({
    required String createdAt,
    required String name,
    required String avatar,
  });

  ResultFuture<List<User>> getUsers();
}
