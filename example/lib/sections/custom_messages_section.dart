import 'package:flutter/material.dart';
import 'package:king_validation/king_validation.dart';

import '../widgets/section_card.dart';
import '../widgets/section_title.dart';
import '../widgets/validator_text_field.dart';

class CustomMessagesSection extends StatelessWidget {
  const CustomMessagesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SectionCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SectionTitle(
            icon: Icons.edit_note_outlined,
            title: 'Custom Validation Messages',
            subtitle:
                'Override the default validation messages by providing your '
                'own messages for each ValidationError.',
          ),

          // ======================================================
          // Email Validator
          // Custom Messages
          //
          // Demonstrates how to override the default
          // validation messages.
          // ======================================================
          ValidatorTextField(
            label: 'Email',
            helper: 'Try leaving the field empty or enter an invalid email.',
            keyboardType: TextInputType.emailAddress,
            prefixIcon: Icons.email_outlined,
            validator: const EmailFormValidator(
              messages: {
                ValidationError.empty: 'Please enter your email address.',
                ValidationError.invalidEmail:
                    'The email address format is invalid.',
              },
            ).call,
          ),

          // ======================================================
          // Password Validator
          // Custom Messages
          //
          // Demonstrates custom password messages.
          // ======================================================
          ValidatorTextField(
            label: 'Password',
            helper: 'Example: Hero@123',
            obscureText: true,
            prefixIcon: Icons.lock_outline,
            validator: const PasswordFormValidator(
              messages: {
                ValidationError.empty: 'Password cannot be empty.',
                ValidationError.invalidPassword:
                    'Please enter a stronger password.',
              },
            ).call,
          ),
          // ======================================================
          // Phone Validator
          // Custom Messages
          //
          // Demonstrates custom phone validation messages.
          // ======================================================
          ValidatorTextField(
            label: 'Phone',
            helper: 'Example: +1234567890',
            keyboardType: TextInputType.phone,
            prefixIcon: Icons.phone_outlined,
            validator: const PhoneFormValidator(
              messages: {
                ValidationError.empty: 'Phone number is required.',
                ValidationError.invalidPhone:
                    'Please enter a valid phone number.',
              },
            ).call,
          ),

          // ======================================================
          // Username Validator
          // Custom Messages
          //
          // Demonstrates custom username validation messages.
          // ======================================================
          ValidatorTextField(
            label: 'Username',
            helper: 'Example: hero_123',
            prefixIcon: Icons.person_outline,
            validator: const UsernameFormValidator(
              messages: {
                ValidationError.empty: 'Username is required.',
                ValidationError.invalidUsername:
                    'Username contains invalid characters.',
              },
            ).call,
          ),
        ],
      ),
    );
  }
}
