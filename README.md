# 👑 King Validation

A lightweight, fast, and easy-to-use Flutter/Dart validation package that helps you validate user input with clean, reusable, and customizable validators.

---

# ✨ Features

✅ Email Validation

🔒 Password Validation

📱 Phone Validation

🌐 URL Validation

👤 Username Validation

📝 Name Validation

📦 Empty Validation

🔢 Number Validation

🔐 OTP Validation

💳 Credit Card Validation

🛠️ Custom Validation

📝 Flutter Form Validators

🎨 Custom Validation Messages

✅ Null Safety

---

# 🚀 Installation

Add the package to your `pubspec.yaml`:

```yaml
dependencies:
  king_validation: ^1.1.0
```

Install the package:

```bash
flutter pub get
```

---

# 📥 Import

```dart
import 'package:king_validation/king_validation.dart';
```

---

# 📚 Usage Examples

## 📧 Email Validation

```dart
final result = EmailValidator.validate(
  'hero@gmail.com',
);

print(result.isValid);
```

---

## 🔒 Password Validation

```dart
final result = PasswordValidator.validate(
  'Hero@123',
);

print(result.isValid);
```

---

## 📱 Phone Validation

```dart
final result = PhoneValidator.validate(
  '1234567890',
);

print(result.isValid);
```

---

## 👤 Username Validation

```dart
final result = UsernameValidator.validate(
  'hero_123',
);

print(result.isValid);
```

---

## 📝 Name Validation

```dart
final result = NameValidator.validate(
  'Hero Ahmed',
);

print(result.isValid);
```

---

## 🌐 URL Validation

```dart
final result = UrlValidator.validate(
  'https://google.com',
);

print(result.isValid);
```

---

## 📦 Empty Validation

```dart
final result = EmptyValidator.validate(
  'Hello World',
);

print(result.isValid);
```

---

## 🔢 Number Validation

```dart
final result = NumberValidator.validate(
  '123.45',
);

print(result.isValid);
```

---

## 🔐 OTP Validation

```dart
final result = OtpValidator.validate(
  '123456',
);

print(result.isValid);
```

---

## 💳 Credit Card Validation

```dart
final result = CreditCardValidator.validate(
  '4111111111111111',
);

print(result.isValid);
```

---

## 🛠️ Custom Validation

```dart
final result = CustomValidator.validate(
  'ABC123',
  RegExp(r'^[A-Z0-9]+$'),
);

print(result.isValid);
```

---

# 📝 Flutter Form Validators

Use the built-in form validators directly with `TextFormField`.

```dart
TextFormField(
  validator: const EmailFormValidator().call,
)
```

Example with another validator:

```dart
TextFormField(
  validator: const PasswordFormValidator().call,
)
```

---

# 🎨 Custom Error Messages

Override the default validation messages.

```dart
TextFormField(
  validator: const EmailFormValidator(
    messages: {
      ValidationError.empty: 'Email is required.',
      ValidationError.invalidEmail: 'Please enter a valid email.',
    },
  ).call,
)
```

---

# 📊 Validation Result

```dart
final result = EmailValidator.validate(
  'hero@gmail.com',
);

if (result.isValid) {
  print('Valid');
} else {
  print(result.error);
}
```

---

# 🎯 Available Validators

| Validator              | Description                         |
| ---------------------- | ----------------------------------- |
| 📧 EmailValidator      | Validate email addresses            |
| 🔒 PasswordValidator   | Validate strong passwords           |
| 📱 PhoneValidator      | Validate phone numbers              |
| 👤 UsernameValidator   | Validate usernames                  |
| 📝 NameValidator       | Validate names                      |
| 🌐 UrlValidator        | Validate URLs                       |
| 📦 EmptyValidator      | Validate empty values               |
| 🔢 NumberValidator     | Validate numeric values             |
| 🔐 OtpValidator        | Validate OTP codes                  |
| 💳 CreditCardValidator | Validate credit card numbers        |
| 🛠️ CustomValidator    | Validate custom regular expressions |

---

# 🧪 Quality

* ✅ 100+ Unit Tests
* ✅ Flutter Example Included
* ✅ Null Safety
* ✅ Flutter Support
* ✅ Dart Support

---

# 📂 Example

A complete Flutter example demonstrating every validator and the new Form Validators is available in the `example/` directory.

---

# 🤝 Contributing

Contributions, issues, and feature requests are welcome.

---

# 📄 License

MIT License

Made with ❤️ using Flutter & Dart.
