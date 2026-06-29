import 'package:flutter_test/flutter_test.dart';
import 'package:king_validation/king_validation.dart';

void main() {
  group('UrlFormValidator', () {
    test('Returns null for valid URL', () {
      const validator = UrlFormValidator();

      expect(validator('https://google.com'), isNull);
    });

    test('Returns default empty message', () {
      const validator = UrlFormValidator();

      expect(validator(''), 'This field is required.');
    });

    test('Returns default invalid URL message', () {
      const validator = UrlFormValidator();

      expect(validator('google'), 'Please enter a valid URL.');
    });

    test('Returns custom empty message', () {
      const validator = UrlFormValidator(
        messages: {ValidationError.empty: 'URL is required.'},
      );

      expect(validator(''), 'URL is required.');
    });

    test('Returns custom invalid URL message', () {
      const validator = UrlFormValidator(
        messages: {ValidationError.invalidUrl: 'Invalid URL.'},
      );

      expect(validator('google'), 'Invalid URL.');
    });
  });
}
