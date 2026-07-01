import 'package:flutter_test/flutter_test.dart';
import 'package:king_validation/king_validation.dart';

void main() {
  group('EmptyValidator', () {
    test('Valid text', () {
      final result = EmptyValidator.validate('Hello World');

      expect(result.isValid, true);
      expect(result.error, null);
    });

    test('Empty string', () {
      final result = EmptyValidator.validate('');

      expect(result.isValid, false);
      expect(result.error, ValidationError.empty);
    });

    test('Null value', () {
      final result = EmptyValidator.validate(null);

      expect(result.isValid, false);
      expect(result.error, ValidationError.empty);
    });

    test('Spaces only', () {
      final result = EmptyValidator.validate('     ');

      expect(result.isValid, false);
      expect(result.error, ValidationError.empty);
    });
  });
}
