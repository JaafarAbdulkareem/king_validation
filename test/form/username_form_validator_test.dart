import 'package:flutter_test/flutter_test.dart';
import 'package:king_validation/king_validation.dart';

void main() {
  group('UsernameFormValidator', () {
    test('Returns null for valid username', () {
      const validator = UsernameFormValidator();

      expect(validator('hero_123'), isNull);
    });

    test('Returns default empty message', () {
      const validator = UsernameFormValidator();

      expect(validator(''), 'This field is required.');
    });

    test('Returns default invalid username message', () {
      const validator = UsernameFormValidator();

      expect(validator('ab'), 'Please enter a valid username.');
    });

    test('Returns custom empty message', () {
      const validator = UsernameFormValidator(
        messages: {ValidationError.empty: 'Username is required.'},
      );

      expect(validator(''), 'Username is required.');
    });

    test('Returns custom invalid username message', () {
      const validator = UsernameFormValidator(
        messages: {ValidationError.invalidUsername: 'Invalid username.'},
      );

      expect(validator('ab'), 'Invalid username.');
    });

    test('Returns multiple custom messages', () {
      const validator = UsernameFormValidator(
        messages: {
          ValidationError.empty: 'Enter your username.',
          ValidationError.invalidUsername: 'Username is invalid.',
        },
      );

      expect(validator(''), 'Enter your username.');

      expect(validator('ab'), 'Username is invalid.');
    });
  });
}
