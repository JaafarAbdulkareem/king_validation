import 'package:flutter/material.dart';
import 'package:king_validation/king_validation.dart';

import '../widgets/section_card.dart';
import '../widgets/section_title.dart';
import '../widgets/validator_text_field.dart';

class DefaultValidatorsSection extends StatelessWidget {
  const DefaultValidatorsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SectionCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SectionTitle(
            icon: Icons.verified_user_outlined,
            title: 'Default Validators',
            subtitle:
                'These examples demonstrate the default validation messages '
                'provided by king_validation.',
          ),

          // ======================================================
          // Email Validator
          // Default Messages
          // ======================================================
          ValidatorTextField(
            label: 'Email',
            helper: 'Example: hero@gmail.com',
            keyboardType: TextInputType.emailAddress,
            prefixIcon: Icons.email_outlined,
            validator: const EmailFormValidator().call,
          ),

          // ======================================================
          // Password Validator
          // Default Messages
          // ======================================================
          ValidatorTextField(
            label: 'Password',
            helper: 'Example: Hero@123',
            obscureText: true,
            prefixIcon: Icons.lock_outline,
            validator: PasswordFormValidator().call,
          ),

          // ======================================================
          // Phone Validator
          // Default Messages
          // ======================================================
          ValidatorTextField(
            label: 'Phone',
            helper: 'Example: +1234567890',
            keyboardType: TextInputType.phone,
            prefixIcon: Icons.phone_outlined,
            validator: PhoneFormValidator().call,
          ),

          // ======================================================
          // Username Validator
          // Default Messages
          // ======================================================
          ValidatorTextField(
            label: 'Username',
            helper: 'Example: hero_123',
            prefixIcon: Icons.person_outline,
            validator: UsernameFormValidator().call,
          ),

          // ======================================================
          // Name Validator
          // Default Messages
          // ======================================================
          ValidatorTextField(
            label: 'Full Name',
            helper: 'Example: Hero Ahmed',
            prefixIcon: Icons.badge_outlined,
            validator: NameFormValidator().call,
          ),
          // ======================================================
          // URL Validator
          // Default Messages
          // ======================================================
          ValidatorTextField(
            label: 'Website',
            helper: 'Example: https://flutter.dev',
            keyboardType: TextInputType.url,
            prefixIcon: Icons.language_outlined,
            validator: UrlFormValidator().call,
          ),

          // ======================================================
          // Empty Validator
          // Default Messages
          // ======================================================
          ValidatorTextField(
            label: 'Required Field',
            helper: 'This field cannot be empty',
            prefixIcon: Icons.edit_outlined,
            validator: EmptyFormValidator().call,
          ),

          // ======================================================
          // Number Validator
          // Default Messages
          // ======================================================
          ValidatorTextField(
            label: 'Number',
            helper: 'Example: 12345',
            keyboardType: TextInputType.number,
            prefixIcon: Icons.numbers_outlined,
            validator: NumberFormValidator().call,
          ),

          // ======================================================
          // OTP Validator
          // Default Messages
          // ======================================================
          ValidatorTextField(
            label: 'OTP',
            helper: 'Example: 123456',
            keyboardType: TextInputType.number,
            prefixIcon: Icons.password_outlined,
            validator: OtpFormValidator().call,
          ),

          // ======================================================
          // Credit Card Validator
          // Default Messages
          // ======================================================
          ValidatorTextField(
            label: 'Credit Card',
            helper: 'Example: 4111111111111111',
            keyboardType: TextInputType.number,
            prefixIcon: Icons.credit_card_outlined,
            validator: CreditCardFormValidator().call,
          ),
        ],
      ),
    );
  }
}
