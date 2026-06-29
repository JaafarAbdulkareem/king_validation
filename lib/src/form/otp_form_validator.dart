import '../enums/validation_error.dart';
import '../models/validation_result.dart';
import '../validators/otp_validator.dart';
import 'base_form_validator.dart';

class OtpFormValidator extends BaseFormValidator {
  final Map<ValidationError, String> messages;

  const OtpFormValidator({this.messages = const {}});

  @override
  ValidationResult validate(String? value) {
    return OtpValidator.validate(value);
  }

  @override
  Map<ValidationError, String> get customMessages => messages;

  @override
  Map<ValidationError, String> get defaultMessages => {
    ValidationError.empty: 'This field is required.',
    ValidationError.invalidOtp: 'Please enter a valid OTP.',
  };
}
