import '../enums/validation_error.dart';
import '../models/validation_result.dart';

class CustomValidator {
  static ValidationResult validate(String? value, RegExp regex) {
    if (value == null || value.trim().isEmpty) {
      return ValidationResult.failure(ValidationError.empty);
    }

    return regex.hasMatch(value)
        ? ValidationResult.success()
        : ValidationResult.failure(ValidationError.customValidationFailed);
  }
}
