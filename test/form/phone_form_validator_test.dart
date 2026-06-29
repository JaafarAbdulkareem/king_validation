import 'package:flutter_test/flutter_test.dart';
import 'package:king_validation/king_validation.dart';

void main() {
  group('PhoneFormValidator', () {
    test('Returns null for valid phone', () {
      const validator = PhoneFormValidator();

      expect(validator('1234567890'), isNull);
    });

    test('Returns default empty message', () {
      const validator = PhoneFormValidator();

      expect(validator(''), 'This field is required.');
    });

    test('Returns default invalid phone message', () {
      const validator = PhoneFormValidator();

      expect(validator('123'), 'Please enter a valid phone number.');
    });

    test('Returns custom empty message', () {
      const validator = PhoneFormValidator(
        messages: {ValidationError.empty: 'Phone is required.'},
      );

      expect(validator(''), 'Phone is required.');
    });

    test('Returns custom invalid phone message', () {
      const validator = PhoneFormValidator(
        messages: {ValidationError.invalidPhone: 'Invalid phone.'},
      );

      expect(validator('123'), 'Invalid phone.');
    });

    test('Returns multiple custom messages', () {
      const validator = PhoneFormValidator(
        messages: {
          ValidationError.empty: 'Enter your phone.',
          ValidationError.invalidPhone: 'Phone number is invalid.',
        },
      );

      expect(validator(''), 'Enter your phone.');

      expect(validator('123'), 'Phone number is invalid.');
    });
  });
}
