import 'dart:convert';
import 'dart:io';

import 'package:bloc_clean_architecture_app/core/utils/typedef.dart';
import 'package:bloc_clean_architecture_app/src/authentication/data/models/user_model.dart';
import 'package:bloc_clean_architecture_app/src/authentication/domain/entities/user.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../fixtures/fixture_reader.dart';

void main() {
  const tModel = UserModel.empty();

  test('Should be a subclass of [User] entity', () {
    //Arrange

    //Act

    // Assert

    expect(tModel, isA<User>());
  });

  final tJson = fixture('user.json');
  final tMap = jsonDecode(tJson) as DataMap;

  group(
    "fromMap",
    () {
      test(
        'should return a [UserModel] with the right data',
        () {
          final result = UserModel.fromMap(tMap);
          expect(result, equals(tModel));
        },
      );
    },
  );
  group(
    "fromJson",
    () {
      test(
        'should return a [UserModel] with the right data',
        () {
          final result = UserModel.fromJson(tJson);
          expect(result, equals(tModel));
        },
      );
    },
  );
  group(
    "toMap",
    () {
      test(
        'should return a [Map] with the right data',
        () {
          final result = tModel.toMap();
          expect(result, equals(tMap));
        },
      );
    },
  );
  group(
    "toJson",
    () {
      test(
        'should return a [JSON] with the right data',
        () {
          final result = tModel.toJson();
          final tJson = jsonEncode({
            "id": "1",
            "name": "_empty.name",
            "avatar": "_empty.avatar",
            "createdAt": "_empty.createdAt"
          });
          expect(result, tJson);
        },
      );
    },
  );
  group('copyWith', () {
    test('should return a [UserModel] with different data', () {
      final result = tModel.copyWith(name: "Nhat");
      expect(result.name, equals("Nhat"));
    });
  });
}
