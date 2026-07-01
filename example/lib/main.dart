import 'package:flutter/material.dart';

import 'pages/home_page.dart';

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
      theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.blue),
      home: const HomePage(),
    );
  }
}
