import '../enums/validation_error.dart';
import '../models/validation_result.dart';

class CreditCardValidator {
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
      r'^[0-9]{13,19}$',
    ).hasMatch(value)
        ? ValidationResult.success()
        : ValidationResult.failure(
            ValidationError.invalidCreditCard,
          );
  }
}