import '../models/auth_response.dart';

class AuthRepository {
  Future<AuthResponse> login(String email, String password) async {
    // Simulate API call
    await Future.delayed(Duration(seconds: 2));
    if (email == "user@example.com" && password == "password123") {
      return AuthResponse(token: "mockToken", userId: "123");
    } else {
      throw Exception("Invalid email or password");
    }
  }
}
