/// Utility class for input validation.
class ValidationUtil {
  static bool isValidEmail(String email) {
    const emailRegex = r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$';
    return RegExp(emailRegex).hasMatch(email);
  }

  static bool isValidPhoneNumber(String phoneNumber) {
    const phoneRegex = r'^\+?[0-9]{10,15}$';
    return RegExp(phoneRegex).hasMatch(phoneNumber);
  }

  static bool isValidPassword(String password) {
    return password.length >= 8;
  }
}
