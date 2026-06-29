import 'package:flutter/material.dart';
import 'package:king_validation/king_validation.dart';

void main() {
  runApp(const KingValidationExample());
}

class KingValidationExample extends StatelessWidget {
  const KingValidationExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'King Validation Example',
      theme: ThemeData(colorSchemeSeed: Colors.blue, useMaterial3: true),
      home: const ExamplePage(),
    );
  }
}

class ExamplePage extends StatefulWidget {
  const ExamplePage({super.key});

  @override
  State<ExamplePage> createState() => _ExamplePageState();
}

class _ExamplePageState extends State<ExamplePage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('King Validation Example')),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            // -----------------------------------------------------------------
            // Email (Default Messages)
            // -----------------------------------------------------------------
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
              validator: const EmailFormValidator().call,
            ),

            const SizedBox(height: 16),

            // -----------------------------------------------------------------
            // Email (Custom Messages)
            // -----------------------------------------------------------------
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Email (Custom Messages)',
                border: OutlineInputBorder(),
              ),
              validator: const EmailFormValidator(
                messages: {
                  ValidationError.empty: 'Please enter your email.',
                  ValidationError.invalidEmail: 'Email format is invalid.',
                },
              ).call,
            ),

            const SizedBox(height: 16),

            // -----------------------------------------------------------------
            // Password
            // -----------------------------------------------------------------
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
              obscureText: true,
              validator: const PasswordFormValidator().call,
            ),

            const SizedBox(height: 16),

            // -----------------------------------------------------------------
            // Phone
            // -----------------------------------------------------------------
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Phone',
                border: OutlineInputBorder(),
              ),
              validator: const PhoneFormValidator().call,
            ),

            const SizedBox(height: 16),

            // -----------------------------------------------------------------
            // Username
            // -----------------------------------------------------------------
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Username',
                border: OutlineInputBorder(),
              ),
              validator: const UsernameFormValidator().call,
            ),

            const SizedBox(height: 16),

            // -----------------------------------------------------------------
            // Name
            // -----------------------------------------------------------------
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Name',
                border: OutlineInputBorder(),
              ),
              validator: const NameFormValidator().call,
            ),

            const SizedBox(height: 16),

            // -----------------------------------------------------------------
            // URL
            // -----------------------------------------------------------------
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'URL',
                border: OutlineInputBorder(),
              ),
              validator: const UrlFormValidator().call,
            ),

            const SizedBox(height: 16),

            // -----------------------------------------------------------------
            // Number
            // -----------------------------------------------------------------
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Number',
                border: OutlineInputBorder(),
              ),
              validator: const NumberFormValidator().call,
            ),

            const SizedBox(height: 16),

            // -----------------------------------------------------------------
            // OTP
            // -----------------------------------------------------------------
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'OTP',
                border: OutlineInputBorder(),
              ),
              validator: const OtpFormValidator().call,
            ),

            const SizedBox(height: 16),

            // -----------------------------------------------------------------
            // Credit Card
            // -----------------------------------------------------------------
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Credit Card',
                border: OutlineInputBorder(),
              ),
              validator: const CreditCardFormValidator().call,
            ),

            const SizedBox(height: 16),

            // -----------------------------------------------------------------
            // Custom Validator
            // -----------------------------------------------------------------
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Custom (Uppercase & Numbers)',
                border: OutlineInputBorder(),
              ),
              validator: CustomFormValidator(
                pattern: RegExp(r'^[A-Z0-9]+$'),
              ).call,
            ),

            const SizedBox(height: 24),

            // -----------------------------------------------------------------
            // Validate Button
            // -----------------------------------------------------------------
            FilledButton(
              onPressed: () {
                _formKey.currentState?.validate();
              },
              child: const Text('Validate'),
            ),
          ],
        ),
      ),
    );
  }
}
