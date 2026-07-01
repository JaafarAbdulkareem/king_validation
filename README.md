# 👑 King Validation

A lightweight, fast, and easy-to-use Flutter/Dart validation package for validating user input.

Supports both:

* ✅ Standalone Validators
* ✅ Flutter Form Validators
* ✅ Custom Validation Messages
* ✅ Custom Regular Expressions
* ✅ Null Safety

---

# ✨ Features

* 📧 Email Validation
* 🔒 Password Validation
* 📱 Phone Validation
* 👤 Username Validation
* 📝 Name Validation
* 🌐 URL Validation
* 📦 Empty Validation
* 🔢 Number Validation
* 🔐 OTP Validation
* 💳 Credit Card Validation
* 🛠️ Custom Validation
* 📝 Flutter Form Validators
* 🎨 Custom Validation Messages

---

# 🚀 Installation

Add the package to your `pubspec.yaml`.

```yaml
dependencies:
  king_validation: ^1.2.0
```

Install packages:

```bash
flutter pub get
```

---

# 📥 Import

```dart
import 'package:king_validation/king_validation.dart';
```

---

# 🚀 Quick Start

## Standalone Validator

```dart
final result = EmailValidator.validate(
  'hero@gmail.com',
);

if (result.isValid) {
  print('Valid Email');
} else {
  print(result.error);
}
```

---

## Flutter Form Validator

```dart
TextFormField(
  decoration: const InputDecoration(
    labelText: 'Email',
  ),
  validator: const EmailFormValidator().call,
)
```

---

## Custom Validation Messages

```dart
TextFormField(
  decoration: const InputDecoration(
    labelText: 'Email',
  ),
  validator: const EmailFormValidator(
    messages: {
      ValidationError.empty:
          'Email is required.',
      ValidationError.invalidEmail:
          'Please enter a valid email.',
    },
  ).call,
)
```

> Every `FormValidator` supports custom validation messages through the `messages` parameter.

---

## Custom Regular Expression

```dart
TextFormField(
  validator: CustomFormValidator(
    pattern: RegExp(r'^[A-Z0-9]+$'),
  ).call,
)
```

---

# 📊 Validation Result

Every standalone validator returns a `ValidationResult`.

```dart
final result = EmailValidator.validate(
  'hero@gmail.com',
);

print(result.isValid);
print(result.error);
```

---

# 📚 More Validator Examples

### Password

```dart
PasswordValidator.validate('Hero@123');
```

### Phone

```dart
PhoneValidator.validate('+1234567890');
```

### Username

```dart
UsernameValidator.validate('hero_123');
```

### Name

```dart
NameValidator.validate('Hero Ahmed');
```

### URL

```dart
UrlValidator.validate('https://flutter.dev');
```

### Empty

```dart
EmptyValidator.validate('');
```

### Number

```dart
NumberValidator.validate('12345');
```

### OTP

```dart
OtpValidator.validate('123456');
```

### Credit Card

```dart
CreditCardValidator.validate('4111111111111111');
```

---

# 📋 Available Validators

## Standalone Validators

| Validator           | Description                         |
| ------------------- | ----------------------------------- |
| EmailValidator      | Validate email addresses            |
| PasswordValidator   | Validate passwords                  |
| PhoneValidator      | Validate phone numbers              |
| UsernameValidator   | Validate usernames                  |
| NameValidator       | Validate names                      |
| UrlValidator        | Validate URLs                       |
| EmptyValidator      | Validate empty values               |
| NumberValidator     | Validate numeric values             |
| OtpValidator        | Validate OTP codes                  |
| CreditCardValidator | Validate credit card numbers        |
| CustomValidator     | Validate custom regular expressions |

---

## Flutter Form Validators

| Form Validator          |
| ----------------------- |
| EmailFormValidator      |
| PasswordFormValidator   |
| PhoneFormValidator      |
| UsernameFormValidator   |
| NameFormValidator       |
| UrlFormValidator        |
| EmptyFormValidator      |
| NumberFormValidator     |
| OtpFormValidator        |
| CreditCardFormValidator |
| CustomFormValidator     |

All Form Validators expose the same API and can be used directly with `TextFormField.validator`.

---

# 📂 Example

A complete Flutter example is available in the `example/` directory.

The example application demonstrates:

* ✅ Standalone Validators
* ✅ Flutter Form Validators
* ✅ Default Validation Messages
* ✅ Custom Validation Messages
* ✅ Custom Regular Expressions
* ✅ Material 3 UI

---

# 🧪 Quality

* ✅ 104 Unit Tests
* ✅ Flutter Example Included
* ✅ Null Safety
* ✅ Flutter Support
* ✅ Dart Support

---

# 🤝 Contributing

Contributions, issues, and feature requests are welcome.

---

# 📄 License

MIT License

Made with ❤️ using Flutter & Dart.
