import '../enums/validation_error.dart';
import '../models/validation_result.dart';

class EmailValidator {
  static ValidationResult validate(String? value) {
    if (value == null || value.trim().isEmpty) {
      return ValidationResult.failure(ValidationError.empty);
    }

    final regex = RegExp(r'^[\w\.-]+@([\w-]+\.)+[\w-]{2,}$');

    return regex.hasMatch(value)
        ? ValidationResult.success()
        : ValidationResult.failure(ValidationError.invalidEmail);
  }
}
