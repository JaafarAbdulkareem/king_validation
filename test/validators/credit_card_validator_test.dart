import 'package:flutter_test/flutter_test.dart';
import 'package:king_validation/king_validation.dart';

void main() {
  group('CreditCardValidator', () {
    test('Valid credit card number', () {
      final result =
          CreditCardValidator.validate(
        '4111111111111111',
      );

      expect(result.isValid, true);
    });

    test('Empty credit card number', () {
      final result =
          CreditCardValidator.validate(
        '',
      );

      expect(result.isValid, false);
      expect(
        result.error,
        ValidationError.empty,
      );
    });

    test('Credit card less than 13 digits', () {
      final result =
          CreditCardValidator.validate(
        '123456789012',
      );

      expect(result.isValid, false);
      expect(
        result.error,
        ValidationError.invalidCreditCard,
      );
    });

    test('Credit card more than 19 digits', () {
      final result =
          CreditCardValidator.validate(
        '12345678901234567890',
      );

      expect(result.isValid, false);
      expect(
        result.error,
        ValidationError.invalidCreditCard,
      );
    });

    test('Credit card contains letters', () {
      final result =
          CreditCardValidator.validate(
        '4111abcd11111111',
      );

      expect(result.isValid, false);
    });

    test('Credit card contains symbols', () {
      final result =
          CreditCardValidator.validate(
        '4111-1111-1111-1111',
      );

      expect(result.isValid, false);
    });
  });
}