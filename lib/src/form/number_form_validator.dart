import '../enums/validation_error.dart';
import '../models/validation_result.dart';
import '../validators/number_validator.dart';
import 'base_form_validator.dart';

class NumberFormValidator extends BaseFormValidator {
  final Map<ValidationError, String> messages;

  const NumberFormValidator({this.messages = const {}});

  @override
  ValidationResult validate(String? value) {
    return NumberValidator.validate(value);
  }

  @override
  Map<ValidationError, String> get customMessages => messages;

  @override
  Map<ValidationError, String> get defaultMessages => {
    ValidationError.empty: 'This field is required.',
    ValidationError.invalidNumber: 'Please enter a valid number.',
  };
}
