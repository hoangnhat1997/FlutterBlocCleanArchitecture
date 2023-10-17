import 'package:equatable/equatable.dart';

class User extends Equatable {
  const User({
    required this.id,
    required this.createdAt,
    required this.name,
    required this.avatar,
  });

  const User.empty()
      : this(
            id: '1',
            createdAt: '_empty.createdAt',
            name: '_empty.name',
            avatar: '_empty.avatar');

  final String id;
  final String createdAt;
  final String name;
  final String avatar;

  @override
  List<Object?> get props => [id, name, avatar];

  // User copyWith({
  //   String? id,
  //   String? avatar,
  //   String? name,
  //   String? createdAt,
  // }) {
  //   return User(
  //     id: id ?? this.id,
  //     createdAt: createdAt ?? this.createdAt,
  //     name: name ?? this.name,
  //     avatar: avatar ?? this.avatar,
  //   );
  // }

  // Map<String, dynamic> toMap() {
  //   return {
  //     'id': this.id,
  //     'createdAt': this.createdAt,
  //     'name': this.name,
  //     "avatar": this.avatar,
  //   };
  // }

  // factory User.fromMap(Map<String, dynamic> map) {
  //   return User(
  //     id: map['id'] as String,
  //     name: map['name'] as String,
  //     avatar: map['avatar'] as String,
  //     createdAt: map['createdAt'] as String,
  //   );
  // }
}
