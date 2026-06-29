import 'package:flutter_test/flutter_test.dart';
import 'package:king_validation/king_validation.dart';

void main() {
  group('UrlValidator', () {
    test('Valid HTTPS URL', () {
      final result =
          UrlValidator.validate(
        'https://google.com',
      );

      expect(result.isValid, true);
    });

    test('Valid HTTP URL', () {
      final result =
          UrlValidator.validate(
        'http://google.com',
      );

      expect(result.isValid, true);
    });

    test('Empty URL', () {
      final result =
          UrlValidator.validate(
        '',
      );

      expect(result.isValid, false);
    });

    test('Invalid URL', () {
      final result =
          UrlValidator.validate(
        'google',
      );

      expect(result.isValid, false);
    });

    test('Random text', () {
      final result =
          UrlValidator.validate(
        'hello world',
      );

      expect(result.isValid, false);
    });
  });
}