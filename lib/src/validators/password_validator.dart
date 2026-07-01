import '../enums/validation_error.dart';
import '../models/validation_result.dart';

class PasswordValidator {
  static ValidationResult validate(String? value, {int minLength = 8}) {
    if (value == null || value.trim().isEmpty) {
      return ValidationResult.failure(ValidationError.empty);
    }

    final hasUpper = RegExp(r'[A-Z]').hasMatch(value);

    final hasLower = RegExp(r'[a-z]').hasMatch(value);

    final hasNumber = RegExp(r'\d').hasMatch(value);

    final hasSpecial = RegExp(r'[!@#\$%^&*(),.?":{}|<>]').hasMatch(value);

    final isValid =
        value.length >= minLength &&
        hasUpper &&
        hasLower &&
        hasNumber &&
        hasSpecial;

    return isValid
        ? ValidationResult.success()
        : ValidationResult.failure(ValidationError.invalidPassword);
  }
}
