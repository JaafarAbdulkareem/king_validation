import '../enums/validation_error.dart';
import '../models/validation_result.dart';

class OtpValidator {
  static ValidationResult validate(
    String? value, {
    int length = 6,
  }) {
    if (value == null ||
        value.trim().isEmpty) {
      return ValidationResult.failure(
        ValidationError.empty,
      );
    }

    return RegExp(
      '^\\d{$length}\$',
    ).hasMatch(value)
        ? ValidationResult.success()
        : ValidationResult.failure(
            ValidationError.invalidOtp,
          );
  }
}