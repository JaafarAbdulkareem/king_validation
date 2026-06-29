import '../enums/validation_error.dart';
import '../models/validation_result.dart';

abstract class BaseFormValidator {
  const BaseFormValidator();

  /// Validates the input.
  ValidationResult validate(String? value);

  /// Default validation messages.
  Map<ValidationError, String> get defaultMessages;

  /// Custom validation messages.
  Map<ValidationError, String> get customMessages => const {};

  /// Flutter FormField validator.
  String? call(String? value) {
    final result = validate(value);

    if (result.isValid) {
      return null;
    }

    final error = result.error;

    if (error == null) {
      return 'Invalid value.';
    }

    return customMessages[error] ?? defaultMessages[error] ?? 'Invalid value.';
  }
}
