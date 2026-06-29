import '../enums/validation_error.dart';
import '../models/validation_result.dart';
import '../validators/custom_validator.dart';
import 'base_form_validator.dart';

class CustomFormValidator extends BaseFormValidator {
  final RegExp pattern;
  final Map<ValidationError, String> messages;

  const CustomFormValidator({required this.pattern, this.messages = const {}});

  @override
  ValidationResult validate(String? value) {
    return CustomValidator.validate(value, pattern);
  }

  @override
  Map<ValidationError, String> get customMessages => messages;

  @override
  Map<ValidationError, String> get defaultMessages => {
    ValidationError.empty: 'This field is required.',
    ValidationError.customValidationFailed: 'The value is invalid.',
  };
}
