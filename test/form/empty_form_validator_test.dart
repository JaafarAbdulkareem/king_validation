import 'package:flutter_test/flutter_test.dart';
import 'package:king_validation/king_validation.dart';

void main() {
  group('EmptyFormValidator', () {
    test('Returns null for non-empty value', () {
      const validator = EmptyFormValidator();

      expect(validator('Hello'), isNull);
    });

    test('Returns default empty message', () {
      const validator = EmptyFormValidator();

      expect(validator(''), 'This field is required.');
    });

    test('Returns custom empty message', () {
      const validator = EmptyFormValidator(
        messages: {ValidationError.empty: 'Field is required.'},
      );

      expect(validator(''), 'Field is required.');
    });
  });
}
