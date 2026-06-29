import 'package:flutter_test/flutter_test.dart';
import 'package:king_validation/king_validation.dart';

void main() {
  group('OtpFormValidator', () {
    test('Returns null for valid OTP', () {
      const validator = OtpFormValidator();

      expect(validator('123456'), isNull);
    });

    test('Returns default empty message', () {
      const validator = OtpFormValidator();

      expect(validator(''), 'This field is required.');
    });

    test('Returns default invalid OTP message', () {
      const validator = OtpFormValidator();

      expect(validator('123'), 'Please enter a valid OTP.');
    });

    test('Returns custom empty message', () {
      const validator = OtpFormValidator(
        messages: {ValidationError.empty: 'OTP is required.'},
      );

      expect(validator(''), 'OTP is required.');
    });

    test('Returns custom invalid OTP message', () {
      const validator = OtpFormValidator(
        messages: {ValidationError.invalidOtp: 'Invalid OTP.'},
      );

      expect(validator('123'), 'Invalid OTP.');
    });
  });
}
