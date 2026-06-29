import 'package:flutter_test/flutter_test.dart';
import 'package:king_validation/king_validation.dart';

void main() {
  group('NumberFormValidator', () {
    test('Returns null for valid number', () {
      const validator = NumberFormValidator();

      expect(validator('123.45'), isNull);
    });

    test('Returns default empty message', () {
      const validator = NumberFormValidator();

      expect(validator(''), 'This field is required.');
    });

    test('Returns default invalid number message', () {
      const validator = NumberFormValidator();

      expect(validator('abc'), 'Please enter a valid number.');
    });

    test('Returns custom empty message', () {
      const validator = NumberFormValidator(
        messages: {ValidationError.empty: 'Number is required.'},
      );

      expect(validator(''), 'Number is required.');
    });

    test('Returns custom invalid number message', () {
      const validator = NumberFormValidator(
        messages: {ValidationError.invalidNumber: 'Invalid number.'},
      );

      expect(validator('abc'), 'Invalid number.');
    });
  });
}
