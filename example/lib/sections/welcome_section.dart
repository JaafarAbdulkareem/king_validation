import 'package:flutter/material.dart';

import '../widgets/section_card.dart';
import '../widgets/section_title.dart';

class WelcomeSection extends StatelessWidget {
  const WelcomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const SectionCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SectionTitle(
            icon: Icons.workspace_premium,
            title: 'Welcome',
            subtitle:
                'This example demonstrates all features of the '
                'King Validation package.',
          ),

          SizedBox(height: 12),

          Text('Included in this example:'),

          SizedBox(height: 12),

          _FeatureTile(
            icon: Icons.check_circle_outline,
            text: 'Standalone Validators',
          ),

          _FeatureTile(
            icon: Icons.check_circle_outline,
            text: 'Flutter Form Validators',
          ),

          _FeatureTile(
            icon: Icons.check_circle_outline,
            text: 'Custom Validation Messages',
          ),

          _FeatureTile(
            icon: Icons.check_circle_outline,
            text: 'Custom Regular Expressions',
          ),

          _FeatureTile(
            icon: Icons.check_circle_outline,
            text: 'Material 3 Example',
          ),
        ],
      ),
    );
  }
}

class _FeatureTile extends StatelessWidget {
  const _FeatureTile({required this.icon, required this.text});

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
          Icon(icon, size: 18),
          SizedBox(width: 8),
          Expanded(child: Text(text)),
        ],
      ),
    );
  }
}
