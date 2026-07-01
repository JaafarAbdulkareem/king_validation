import 'package:flutter/material.dart';
import 'package:king_validation/king_validation.dart';

import '../widgets/section_card.dart';
import '../widgets/section_title.dart';
import '../widgets/validator_text_field.dart';

class CustomRegexSection extends StatelessWidget {
  const CustomRegexSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SectionCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SectionTitle(
            icon: Icons.code_outlined,
            title: 'Custom Regular Expression',
            subtitle:
                'Create your own validator using any RegExp pattern. '
                'You can also override the default validation messages.',
          ),

          // ======================================================
          // Custom Validator
          // Uppercase letters and numbers only.
          //
          // Pattern:
          // ^[A-Z0-9]+$
          // ======================================================
          ValidatorTextField(
            label: 'Uppercase & Numbers',
            helper: 'Example: ABC123',
            prefixIcon: Icons.abc_outlined,
            validator: CustomFormValidator(
              pattern: RegExp(r'^[A-Z0-9]+$'),
            ).call,
          ),

          // ======================================================
          // Custom Validator
          // Custom validation messages.
          //
          // Pattern:
          // ^[A-Z0-9]+$
          // ======================================================
          ValidatorTextField(
            label: 'Custom Messages',
            helper: 'Example: ABC123',
            prefixIcon: Icons.edit_note_outlined,
            validator: CustomFormValidator(
              pattern: RegExp(r'^[A-Z0-9]+$'),
              messages: {
                ValidationError.empty: 'Please enter a value.',
                ValidationError.customValidationFailed:
                    'Only uppercase letters and numbers are allowed.',
              },
            ).call,
          ),
        ],
      ),
    );
  }
}
