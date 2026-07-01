import 'package:flutter_test/flutter_test.dart';
import 'package:king_validation/king_validation.dart';

void main() {
  group('NumberValidator', () {
    test('Valid integer', () {
      final result = NumberValidator.validate('123');

      expect(result.isValid, true);
    });

    test('Valid double', () {
      final result = NumberValidator.validate('123.45');

      expect(result.isValid, true);
    });

    test('Empty number', () {
      final result = NumberValidator.validate('');

      expect(result.isValid, false);
      expect(result.error, ValidationError.empty);
    });

    test('Invalid number', () {
      final result = NumberValidator.validate('abc');

      expect(result.isValid, false);
      expect(result.error, ValidationError.invalidNumber);
    });

    test('Number contains letters', () {
      final result = NumberValidator.validate('123abc');

      expect(result.isValid, false);
    });
  });
}
