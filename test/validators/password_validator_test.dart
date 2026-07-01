import 'package:flutter_test/flutter_test.dart';
import 'package:king_validation/king_validation.dart';

void main() {
  group('PasswordValidator', () {
    test('Valid password', () {
      final result = PasswordValidator.validate('Hero@123');

      expect(result.isValid, true);
    });

    test('Invalid password', () {
      final result = PasswordValidator.validate('12345678');

      expect(result.isValid, false);
      expect(result.error, ValidationError.invalidPassword);
    });
  });
}
