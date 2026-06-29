import 'package:flutter_test/flutter_test.dart';

import 'package:king_validation/king_validation.dart';

void main() {
  test('valid email', () {
    final result = EmailValidator.validate('hero@gmail.com');

    expect(result.isValid, true);
  });
}
