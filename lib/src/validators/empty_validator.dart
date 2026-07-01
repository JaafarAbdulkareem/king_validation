import '../enums/validation_error.dart';
import '../models/validation_result.dart';

class EmptyValidator {
  static ValidationResult validate(String? value) {
    return value != null && value.trim().isNotEmpty
        ? ValidationResult.success()
        : ValidationResult.failure(ValidationError.empty);
  }
}
