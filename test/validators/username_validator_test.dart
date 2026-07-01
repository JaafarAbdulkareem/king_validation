import 'package:flutter_test/flutter_test.dart';
import 'package:king_validation/king_validation.dart';

void main() {
  group('UsernameValidator', () {
    test('Valid username', () {
      final result = UsernameValidator.validate('hero_123');

      expect(result.isValid, true);
      expect(result.error, null);
    });

    test('Empty username', () {
      final result = UsernameValidator.validate('');

      expect(result.isValid, false);
      expect(result.error, ValidationError.empty);
    });

    test('Username less than 3 chars', () {
      final result = UsernameValidator.validate('he');

      expect(result.isValid, false);
      expect(result.error, ValidationError.invalidUsername);
    });

    test('Username more than 20 chars', () {
      final result = UsernameValidator.validate('heroheroheroherohero123');

      expect(result.isValid, false);
      expect(result.error, ValidationError.invalidUsername);
    });

    test('Username contains spaces', () {
      final result = UsernameValidator.validate('hero user');

      expect(result.isValid, false);
      expect(result.error, ValidationError.invalidUsername);
    });

    test('Username contains symbols', () {
      final result = UsernameValidator.validate('hero@123');

      expect(result.isValid, false);
      expect(result.error, ValidationError.invalidUsername);
    });
  });
}
