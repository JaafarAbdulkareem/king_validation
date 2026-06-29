import '../enums/validation_error.dart';
import '../models/validation_result.dart';
import '../validators/username_validator.dart';
import 'base_form_validator.dart';

class UsernameFormValidator extends BaseFormValidator {
  final Map<ValidationError, String> messages;

  const UsernameFormValidator({this.messages = const {}});

  @override
  ValidationResult validate(String? value) {
    return UsernameValidator.validate(value);
  }

  @override
  Map<ValidationError, String> get customMessages => messages;

  @override
  Map<ValidationError, String> get defaultMessages => {
    ValidationError.empty: 'This field is required.',
    ValidationError.invalidUsername: 'Please enter a valid username.',
  };
}
