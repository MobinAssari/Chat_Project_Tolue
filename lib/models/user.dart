import 'dart:ui';

class User {
  User(this.id, this.family, this.userId, this.image, this.nickname, this.lastOnline, this.isOnline, {required this.name, required this.number});
  final String? id;
  final String name;
  final String? family;
  final int number;
  final String? userId;
  final Image? image;
  final String? nickname;
  final DateTime? lastOnline;
  final bool? isOnline;
}