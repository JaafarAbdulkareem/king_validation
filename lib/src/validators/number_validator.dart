import '../enums/validation_error.dart';
import '../models/validation_result.dart';

class NumberValidator {
  static ValidationResult validate(String? value) {
    if (value == null || value.trim().isEmpty) {
      return ValidationResult.failure(ValidationError.empty);
    }

    return double.tryParse(value) != null
        ? ValidationResult.success()
        : ValidationResult.failure(ValidationError.invalidNumber);
  }
}
