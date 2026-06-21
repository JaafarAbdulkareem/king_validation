# 👑 King Validation

A lightweight, fast, and easy-to-use Flutter/Dart validation package that helps you validate user input with clean and reusable validators.

---

## ✨ Features

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

---

## 🚀 Installation

Add the package to your `pubspec.yaml`:

```yaml
dependencies:
  king_validation: ^1.0.0
```

Run:

```bash
flutter pub get
```

---

## 📥 Import

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

| Validator | Description |
|------------|-------------|
| 📧 EmailValidator | Validate email addresses |
| 🔒 PasswordValidator | Validate strong passwords |
| 📱 PhoneValidator | Validate phone numbers |
| 👤 UsernameValidator | Validate usernames |
| 📝 NameValidator | Validate names |
| 🌐 UrlValidator | Validate URLs |
| 📦 EmptyValidator | Validate empty values |
| 🔢 NumberValidator | Validate numbers |
| 🔐 OtpValidator | Validate OTP codes |
| 💳 CreditCardValidator | Validate credit card numbers |
| 🛠️ CustomValidator | Validate custom patterns |

---

## 🧪 Tested

✅ Unit Tested

✅ Example Included

✅ Null Safety Support

✅ Flutter Support

✅ Dart Support

---

## 🤝 Contributing

Contributions, issues, and feature requests are welcome.

---

## 📄 License

MIT License

Made with ❤️ using Flutter & Dart.