import 'package:flutter_test/flutter_test.dart';
import 'package:king_validation/king_validation.dart';

void main() {
  group('CustomValidator', () {
    test('Valid custom pattern', () {
      final result = CustomValidator.validate('ABC123', RegExp(r'^[A-Z0-9]+$'));

      expect(result.isValid, true);
    });

    test('Empty value', () {
      final result = CustomValidator.validate('', RegExp(r'^[A-Z0-9]+$'));

      expect(result.isValid, false);
      expect(result.error, ValidationError.empty);
    });

    test('Invalid custom pattern', () {
      final result = CustomValidator.validate('abc123', RegExp(r'^[A-Z0-9]+$'));

      expect(result.isValid, false);
      expect(result.error, ValidationError.customValidationFailed);
    });
  });
}
