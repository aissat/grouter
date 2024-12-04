class AuthService {
  bool _isAuthenticated = false;

  bool get isAuthenticated => _isAuthenticated;

  Future<bool> login(String username, String password) async {
    // Simulate login logic
    await Future.delayed(const Duration(seconds: 1));
    _isAuthenticated = username == 'admin' && password == 'password';
    return _isAuthenticated;
  }

  void logout() {
    _isAuthenticated = false;
  }
}
