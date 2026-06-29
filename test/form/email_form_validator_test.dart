import 'package:flutter_test/flutter_test.dart';
import 'package:king_validation/king_validation.dart';

void main() {
  group('EmailFormValidator', () {
    test('Returns null for valid email', () {
      const validator = EmailFormValidator();

      expect(validator('hero@gmail.com'), isNull);
    });

    test('Returns default empty message', () {
      const validator = EmailFormValidator();

      expect(
        validator(''),
        'This field is required.',
      );
    });

    test('Returns default invalid email message', () {
      const validator = EmailFormValidator();

      expect(
        validator('hero@gmail'),
        'Please enter a valid email address.',
      );
    });

    test('Returns custom empty message', () {
      const validator = EmailFormValidator(
        messages: {
          ValidationError.empty: 'Email is required.',
        },
      );

      expect(
        validator(''),
        'Email is required.',
      );
    });

    test('Returns custom invalid email message', () {
      const validator = EmailFormValidator(
        messages: {
          ValidationError.invalidEmail: 'Invalid email.',
        },
      );

      expect(
        validator('hero@gmail'),
        'Invalid email.',
      );
    });

    test('Returns multiple custom messages', () {
      const validator = EmailFormValidator(
        messages: {
          ValidationError.empty: 'Please enter your email.',
          ValidationError.invalidEmail: 'Email format is incorrect.',
        },
      );

      expect(
        validator(''),
        'Please enter your email.',
      );

      expect(
        validator('hero@gmail'),
        'Email format is incorrect.',
      );
    });
  });
}