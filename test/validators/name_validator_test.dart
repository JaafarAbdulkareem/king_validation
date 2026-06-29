import 'package:flutter_test/flutter_test.dart';
import 'package:king_validation/king_validation.dart';

void main() {
  group('NameValidator', () {
    test('Valid English name', () {
      final result =
          NameValidator.validate(
        'Hero Ahmed',
      );

      expect(result.isValid, true);
    });

    test('Valid Arabic name', () {
      final result =
          NameValidator.validate(
        'محمد أحمد',
      );

      expect(result.isValid, true);
    });

    test('Empty name', () {
      final result =
          NameValidator.validate(
        '',
      );

      expect(result.isValid, false);
      expect(
        result.error,
        ValidationError.empty,
      );
    });

    test('Name less than minimum length', () {
      final result =
          NameValidator.validate(
        'A',
      );

      expect(result.isValid, false);
      expect(
        result.error,
        ValidationError.invalidName,
      );
    });

    test('Name contains numbers', () {
      final result =
          NameValidator.validate(
        'Hero123',
      );

      expect(result.isValid, false);
    });

    test('Name contains symbols', () {
      final result =
          NameValidator.validate(
        'Hero@Ahmed',
      );

      expect(result.isValid, false);
    });
  });
}