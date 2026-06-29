import '../enums/validation_error.dart';
import '../models/validation_result.dart';
import '../validators/credit_card_validator.dart';
import 'base_form_validator.dart';

class CreditCardFormValidator extends BaseFormValidator {
  final Map<ValidationError, String> messages;

  const CreditCardFormValidator({this.messages = const {}});

  @override
  ValidationResult validate(String? value) {
    return CreditCardValidator.validate(value);
  }

  @override
  Map<ValidationError, String> get customMessages => messages;

  @override
  Map<ValidationError, String> get defaultMessages => {
    ValidationError.empty: 'This field is required.',
    ValidationError.invalidCreditCard:
        'Please enter a valid credit card number.',
  };
}
