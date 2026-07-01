import 'package:flutter/material.dart';

import '../widgets/section_card.dart';
import '../widgets/section_title.dart';

class ActionButtonsSection extends StatelessWidget {
  const ActionButtonsSection({super.key, required this.formKey});

  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    return SectionCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SectionTitle(
            icon: Icons.task_alt_outlined,
            title: 'Validate & Reset',
            subtitle:
                'Validate all fields or reset the form to its initial state.',
          ),

          Row(
            children: [
              Expanded(
                child: FilledButton.icon(
                  onPressed: () {
                    formKey.currentState?.validate();
                  },
                  icon: const Icon(Icons.check_circle_outline),
                  label: const Text('Validate'),
                ),
              ),

              const SizedBox(width: 16),

              Expanded(
                child: OutlinedButton.icon(
                  onPressed: () {
                    formKey.currentState?.reset();
                  },
                  icon: const Icon(Icons.refresh),
                  label: const Text('Reset'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
