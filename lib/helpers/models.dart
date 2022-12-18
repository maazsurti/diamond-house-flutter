import 'dart:ffi';

class Settings {
  Bool isArabic;
  String username;
  String userID;
  String email;
  Settings({
    required this.isArabic,
    required this.username,
    required this.userID,
    required this.email,
  });
}
