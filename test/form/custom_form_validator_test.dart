import 'package:flutter_test/flutter_test.dart';
import 'package:king_validation/king_validation.dart';

void main() {
  group('CustomFormValidator', () {
    final validator = CustomFormValidator(pattern: RegExp(r'^[A-Z0-9]+$'));

    test('Returns null for valid value', () {
      expect(validator('ABC123'), isNull);
    });

    test('Returns default empty message', () {
      expect(validator(''), 'This field is required.');
    });

    test('Returns default custom validation message', () {
      expect(validator('abc123'), 'The value is invalid.');
    });

    test('Returns custom empty message', () {
      final validator = CustomFormValidator(
        pattern: RegExp(r'^[A-Z0-9]+$'),
        messages: {ValidationError.empty: 'Value is required.'},
      );

      expect(validator(''), 'Value is required.');
    });

    test('Returns custom validation message', () {
      final validator = CustomFormValidator(
        pattern: RegExp(r'^[A-Z0-9]+$'),
        messages: {ValidationError.customValidationFailed: 'Invalid format.'},
      );

      expect(validator('abc123'), 'Invalid format.');
    });

    test('Returns multiple custom messages', () {
      final validator = CustomFormValidator(
        pattern: RegExp(r'^[A-Z0-9]+$'),
        messages: {
          ValidationError.empty: 'Please enter a value.',
          ValidationError.customValidationFailed:
              'Only uppercase letters and numbers are allowed.',
        },
      );

      expect(validator(''), 'Please enter a value.');

      expect(
        validator('abc123'),
        'Only uppercase letters and numbers are allowed.',
      );
    });
  });
}
