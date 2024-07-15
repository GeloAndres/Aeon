import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yes_no_chat/config/theme/theme.dart';
import 'package:yes_no_chat/presentation/providers/chat_providers.dart';
import 'package:yes_no_chat/presentation/screens/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => ChatProviders())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'GelonzioApp',
        theme: AppTheme(selecterColor: 1).theme(),
        home: const HomeScreen(),
      ),
    );
  }
}
