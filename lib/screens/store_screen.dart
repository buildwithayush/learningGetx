import 'package:flutter/material.dart';

class StoreScreen extends StatefulWidget {
  const StoreScreen({super.key});

  @override
  State<StoreScreen> createState() => _MapsScreenState();
}

class _MapsScreenState extends State<StoreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Store Screen')),
      body: Center(
        child: Text(
          'Store Screen',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}