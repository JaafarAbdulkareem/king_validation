import 'package:flutter_test/flutter_test.dart';
import 'package:king_validation/king_validation.dart';

void main() {
  group('PhoneValidator', () {
    test('Valid phone', () {
      final result = PhoneValidator.validate('1234567890');

      expect(result.isValid, true);
      expect(result.error, null);
    });

    test('Empty phone', () {
      final result = PhoneValidator.validate('');

      expect(result.isValid, false);
      expect(result.error, ValidationError.empty);
    });

    test('Phone less than 8 digits', () {
      final result = PhoneValidator.validate('1234567');

      expect(result.isValid, false);
      expect(result.error, ValidationError.invalidPhone);
    });

    test('Phone more than 15 digits', () {
      final result = PhoneValidator.validate('1234567890123456');

      expect(result.isValid, false);
      expect(result.error, ValidationError.invalidPhone);
    });

    test('Phone contains letters', () {
      final result = PhoneValidator.validate('12345abcde');

      expect(result.isValid, false);
      expect(result.error, ValidationError.invalidPhone);
    });

    test('Phone contains symbols', () {
      final result = PhoneValidator.validate('12345@#\$%');

      expect(result.isValid, false);
      expect(result.error, ValidationError.invalidPhone);
    });
  });
}
