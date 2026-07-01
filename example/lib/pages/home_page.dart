import 'package:flutter/material.dart';

import '../sections/action_buttons_section.dart';
import '../sections/custom_messages_section.dart';
import '../sections/custom_regex_section.dart';
import '../sections/default_validators_section.dart';
import '../sections/welcome_section.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('👑 King Validation'),
        centerTitle: true,
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            // ======================================================
            // Welcome
            // ======================================================
            const WelcomeSection(),

            // ======================================================
            // Default Validators
            // ======================================================
            const DefaultValidatorsSection(),

            // ======================================================
            // Custom Validation Messages
            // ======================================================
            const CustomMessagesSection(),

            // ======================================================
            // Custom Regular Expression
            // ======================================================
            const CustomRegexSection(),

            // ======================================================
            // Actions
            // ======================================================
            ActionButtonsSection(formKey: _formKey),
          ],
        ),
      ),
    );
  }
}
