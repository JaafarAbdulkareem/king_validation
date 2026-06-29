import 'package:flutter_test/flutter_test.dart';
import 'package:king_validation/king_validation.dart';

void main() {
  group('PasswordFormValidator', () {
    test('Returns null for valid password', () {
      const validator = PasswordFormValidator();

      expect(validator('Hero@123'), isNull);
    });

    test('Returns default empty message', () {
      const validator = PasswordFormValidator();

      expect(validator(''), 'This field is required.');
    });

    test('Returns default invalid password message', () {
      const validator = PasswordFormValidator();

      expect(validator('123'), 'Please enter a valid password.');
    });

    test('Returns custom empty message', () {
      const validator = PasswordFormValidator(
        messages: {ValidationError.empty: 'Password is required.'},
      );

      expect(validator(''), 'Password is required.');
    });

    test('Returns custom invalid password message', () {
      const validator = PasswordFormValidator(
        messages: {ValidationError.invalidPassword: 'Weak password.'},
      );

      expect(validator('123'), 'Weak password.');
    });

    test('Returns multiple custom messages', () {
      const validator = PasswordFormValidator(
        messages: {
          ValidationError.empty: 'Enter your password.',
          ValidationError.invalidPassword: 'Password is too weak.',
        },
      );

      expect(validator(''), 'Enter your password.');

      expect(validator('123'), 'Password is too weak.');
    });
  });
}
