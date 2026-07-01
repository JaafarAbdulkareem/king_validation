import 'package:flutter_test/flutter_test.dart';
import 'package:king_validation/king_validation.dart';

void main() {
  group('OtpValidator', () {
    test('Valid OTP', () {
      final result = OtpValidator.validate('123456');

      expect(result.isValid, true);
    });

    test('Empty OTP', () {
      final result = OtpValidator.validate('');

      expect(result.isValid, false);
      expect(result.error, ValidationError.empty);
    });

    test('OTP less than required length', () {
      final result = OtpValidator.validate('12345');

      expect(result.isValid, false);
      expect(result.error, ValidationError.invalidOtp);
    });

    test('OTP contains letters', () {
      final result = OtpValidator.validate('12ab56');

      expect(result.isValid, false);
    });

    test('OTP contains symbols', () {
      final result = OtpValidator.validate('12@456');

      expect(result.isValid, false);
    });
  });
}
