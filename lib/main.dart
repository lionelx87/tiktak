import 'package:flutter/material.dart';
import 'package:tiktak/config/theme/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TikTak',
      debugShowCheckedModeBanner: false,
      theme: AppTheme().getTheme(),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('TikTak'),
        ),
        body: const Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}