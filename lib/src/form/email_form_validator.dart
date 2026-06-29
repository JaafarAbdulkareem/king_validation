import '../enums/validation_error.dart';
import '../models/validation_result.dart';
import '../validators/email_validator.dart';
import 'base_form_validator.dart';

class EmailFormValidator extends BaseFormValidator {
  final Map<ValidationError, String> messages;

  const EmailFormValidator({this.messages = const {}});

  @override
  ValidationResult validate(String? value) {
    return EmailValidator.validate(value);
  }

  @override
  Map<ValidationError, String> get customMessages => messages;

  @override
  Map<ValidationError, String> get defaultMessages => {
    ValidationError.empty: 'This field is required.',
    ValidationError.invalidEmail: 'Please enter a valid email address.',
  };
}
