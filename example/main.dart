import 'package:king_validation/king_validation.dart';

void main() {
  // Example usage of the EmailValidator
  final emailResult = EmailValidator.validate('hero@gmail.com');

  print('Email: ${emailResult.isValid}');

  // Example usage of the PasswordValidator
  final passwordResult = PasswordValidator.validate('Hero@123');

  print('Password: ${passwordResult.isValid}');

  // Example usage of the PhoneValidator
  final phoneResult = PhoneValidator.validate('1234567890');

  print('Phone: ${phoneResult.isValid}');

  // Example usage of the UsernameValidator
  final usernameResult = UsernameValidator.validate('hero_123');

  print('Username: ${usernameResult.isValid}');

  // Example usage of the NameValidator
  final nameResult = NameValidator.validate('Hero Ahmed');

  print('Name: ${nameResult.isValid}');

  // Example usage of the UrlValidator
  final urlResult = UrlValidator.validate('https://google.com');

  print('Url: ${urlResult.isValid}');

  // Example usage of the NumberValidator
  final numberResult = NumberValidator.validate('123.45');

  print('Number: ${numberResult.isValid}');

  // Example usage of the OtpValidator
  final otpResult = OtpValidator.validate('123456');

  print('OTP: ${otpResult.isValid}');

  // Example usage of the CreditCardValidator
  final creditCardResult = CreditCardValidator.validate('4111111111111111');

  print('Credit Card: ${creditCardResult.isValid}');

  // Example usage of the CustomValidator
  final customResult = CustomValidator.validate(
    'ABC123',
    RegExp(r'^[A-Z0-9]+$'),
  );

  print('Custom: ${customResult.isValid}');
}
