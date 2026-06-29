import '../enums/validation_error.dart';
import '../models/validation_result.dart';
import '../validators/phone_validator.dart';
import 'base_form_validator.dart';

class PhoneFormValidator extends BaseFormValidator {
  final Map<ValidationError, String> messages;

  const PhoneFormValidator({this.messages = const {}});

  @override
  ValidationResult validate(String? value) {
    return PhoneValidator.validate(value);
  }

  @override
  Map<ValidationError, String> get customMessages => messages;

  @override
  Map<ValidationError, String> get defaultMessages => {
    ValidationError.empty: 'This field is required.',
    ValidationError.invalidPhone: 'Please enter a valid phone number.',
  };
}
