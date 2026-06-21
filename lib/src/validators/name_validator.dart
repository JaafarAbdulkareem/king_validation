import '../enums/validation_error.dart';
import '../models/validation_result.dart';

class NameValidator {
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
      r'^[a-zA-Zأ-ي\s]{2,50}$',
    ).hasMatch(value)
        ? ValidationResult.success()
        : ValidationResult.failure(
            ValidationError.invalidName,
          );
  }
}