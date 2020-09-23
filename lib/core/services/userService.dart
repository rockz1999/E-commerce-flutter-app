import 'package:injectable/injectable.dart';

@lazySingleton
class UserData {
  String _username;
  String _email;

  set setusername(String name) => _username = name;
  set setEmail(String email) => _email = email;

  String get userName => _username;
  String get email => _email;
}
