import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:opinion_rewards_shared/opinion_rewards_shared.dart';

void main() {
  // runApp() will be wrapped with a ProviderScope to use Riverpod for state management
  runApp(const ProviderScope(child: AdminApp()));
}

class AdminApp extends StatelessWidget {
  const AdminApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Opinion Rewards Admin',
      theme: ThemeData(
        primarySwatch: Colors.blue,
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
        title: const Text('Admin Panel Home'),
      ),
      body: Center(
        // Example of using code from the shared package
        child: Text(helloShared),
      ),
    );
  }
}
