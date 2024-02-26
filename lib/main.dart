import 'package:flutter/material.dart';
import 'package:fogo_chat/utils/constants.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:fogo_chat/pages/splash_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://jcrdgfysbonrjtdvboom.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImpjcmRnZnlzYm9ucmp0ZHZib29tIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDczNjgzNTEsImV4cCI6MjAyMjk0NDM1MX0.uXzUYX5MPosEz59LkIdwSe5wbGcxRMCgZpMzbQnSl8I',
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Chat App',
      theme: appTheme,
      home: const SplashPage(),
    );
  }
}
