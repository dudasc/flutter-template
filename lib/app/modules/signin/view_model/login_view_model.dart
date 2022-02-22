class LoginViewModel {
  String username = '';
  String password = '';

  void setUsername(dynamic value) {
    username = value;
  }
  void setPassword(dynamic value) {
    password = value;
  }

  String get getUsername{
    return username;
  }
  String get getPassword{
    return password;
  }
}