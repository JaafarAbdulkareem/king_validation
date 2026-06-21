import '../enums/validation_error.dart';
import '../models/validation_result.dart';

class UsernameValidator {
  static ValidationResult validate(
    String? value,
  ) {
    if (value == null ||
        value.trim().isEmpty) {
      return ValidationResult.failure(
        ValidationError.empty,
      );
    }

    return RegExp(
      r'^[a-zA-Z0-9_]{3,20}$',
    ).hasMatch(value)
        ? ValidationResult.success()
        : ValidationResult.failure(
            ValidationError.invalidUsername,
          );
  }
}