import '../enums/validation_error.dart';
import '../models/validation_result.dart';
import '../validators/empty_validator.dart';
import 'base_form_validator.dart';

class EmptyFormValidator extends BaseFormValidator {
  final Map<ValidationError, String> messages;

  const EmptyFormValidator({this.messages = const {}});

  @override
  ValidationResult validate(String? value) {
    return EmptyValidator.validate(value);
  }

  @override
  Map<ValidationError, String> get customMessages => messages;

  @override
  Map<ValidationError, String> get defaultMessages => {
    ValidationError.empty: 'This field is required.',
  };
}
