import 'package:flutter_test/flutter_test.dart';
import 'package:king_validation/king_validation.dart';

void main() {
  group('CreditCardFormValidator', () {
    test('Returns null for valid credit card', () {
      const validator = CreditCardFormValidator();

      expect(validator('4111111111111111'), isNull);
    });

    test('Returns default empty message', () {
      const validator = CreditCardFormValidator();

      expect(validator(''), 'This field is required.');
    });

    test('Returns default invalid credit card message', () {
      const validator = CreditCardFormValidator();

      expect(validator('1234'), 'Please enter a valid credit card number.');
    });

    test('Returns custom empty message', () {
      const validator = CreditCardFormValidator(
        messages: {ValidationError.empty: 'Card number is required.'},
      );

      expect(validator(''), 'Card number is required.');
    });

    test('Returns custom invalid credit card message', () {
      const validator = CreditCardFormValidator(
        messages: {ValidationError.invalidCreditCard: 'Invalid card.'},
      );

      expect(validator('1234'), 'Invalid card.');
    });
  });
}
