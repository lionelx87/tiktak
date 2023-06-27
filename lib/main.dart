import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tiktak/config/theme/app_theme.dart';
import 'package:tiktak/presentation/providers/discover_provider.dart';
import 'package:tiktak/presentation/screen/discover/discover_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(lazy: false, create: (_) => DiscoverProvider()..loadNextPage())
      ],
      child: MaterialApp(
        title: 'TikTak',
        debugShowCheckedModeBanner: false,
        theme: AppTheme().getTheme(),
        home: const DiscoverScreen(),
      ),
    );
  }
}