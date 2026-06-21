import '../enums/validation_error.dart';
import '../models/validation_result.dart';

class UrlValidator {
  static ValidationResult validate(
    String? value,
  ) {
    if (value == null ||
        value.trim().isEmpty) {
      return ValidationResult.failure(
        ValidationError.empty,
      );
    }

    final uri = Uri.tryParse(value);

    return uri != null &&
            (uri.scheme == 'http' ||
                uri.scheme == 'https')
        ? ValidationResult.success()
        : ValidationResult.failure(
            ValidationError.invalidUrl,
          );
  }
}