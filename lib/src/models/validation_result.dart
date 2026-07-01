import '../enums/validation_error.dart';

class ValidationResult {
  final bool isValid;
  final ValidationError? error;

  const ValidationResult({required this.isValid, this.error});

  factory ValidationResult.success() {
    return const ValidationResult(isValid: true);
  }

  factory ValidationResult.failure(ValidationError error) {
    return ValidationResult(isValid: false, error: error);
  }
}
