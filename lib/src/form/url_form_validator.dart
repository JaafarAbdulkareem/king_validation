import '../enums/validation_error.dart';
import '../models/validation_result.dart';
import '../validators/url_validator.dart';
import 'base_form_validator.dart';

class UrlFormValidator extends BaseFormValidator {
  final Map<ValidationError, String> messages;

  const UrlFormValidator({this.messages = const {}});

  @override
  ValidationResult validate(String? value) {
    return UrlValidator.validate(value);
  }

  @override
  Map<ValidationError, String> get customMessages => messages;

  @override
  Map<ValidationError, String> get defaultMessages => {
    ValidationError.empty: 'This field is required.',
    ValidationError.invalidUrl: 'Please enter a valid URL.',
  };
}
