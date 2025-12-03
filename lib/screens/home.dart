import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _MapsScreenState();
}

class _MapsScreenState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home1 Screen')),
      body: Center(
        child: Text(
          'Home1 Screen',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}