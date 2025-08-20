import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:opinion_rewards_shared/opinion_rewards_shared.dart';

void main() {
  runApp(const ProviderScope(child: UserApp()));
}

class UserApp extends StatelessWidget {
  const UserApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Opinion Rewards',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome!'),
      ),
      body: Center(
        // Example of using code from the shared package
        child: Text(helloShared),
      ),
    );
  }
}
