import '../enums/validation_error.dart';
import '../models/validation_result.dart';
import '../validators/password_validator.dart';
import 'base_form_validator.dart';

class PasswordFormValidator extends BaseFormValidator {
  final Map<ValidationError, String> messages;

  const PasswordFormValidator({this.messages = const {}});

  @override
  ValidationResult validate(String? value) {
    return PasswordValidator.validate(value);
  }

  @override
  Map<ValidationError, String> get customMessages => messages;

  @override
  Map<ValidationError, String> get defaultMessages => {
    ValidationError.empty: 'This field is required.',
    ValidationError.invalidPassword: 'Please enter a valid password.',
  };
}
