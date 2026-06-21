import 'package:flutter_test/flutter_test.dart';
import 'package:king_validation/king_validation.dart';

void main() {
  group('Email Validator', () {
    test('Valid email', () {
      final result =
          EmailValidator.validate(
        'hero@gmail.com',
      );

      expect(result.isValid, true);
    });

    test('Invalid email', () {
      final result =
          EmailValidator.validate(
        'hero@gmail',
      );

      expect(result.isValid, false);
    });
  });
}