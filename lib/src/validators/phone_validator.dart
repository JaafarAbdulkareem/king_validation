import '../enums/validation_error.dart';
import '../models/validation_result.dart';

class PhoneValidator {
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
      r'^[0-9]{8,15}$',
    ).hasMatch(value)
        ? ValidationResult.success()
        : ValidationResult.failure(
            ValidationError.invalidPhone,
          );
  }
}