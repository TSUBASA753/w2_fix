import 'package:flutter/material.dart';
import 'rectangie_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cal',
      theme: ThemeData(

        appBarTheme: AppBarTheme(
            backgroundColor: Color(0xE7FF5252),
            foregroundColor: Color(0xFF000773)
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0x00000000)),
        scaffoldBackgroundColor: const Color(0xF0F3E6D9),
        ),
      routes: {
        '/' : (context) => MyHomePage(),
        '/rtg' : (context) => RectanglePage() // rtg = Rectsngle
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(

        child: TextButton(onPressed: () => Navigator.pushNamed(context, '/rtg' ),
          child: Text('Start'),
        style: TextButton.styleFrom(
          backgroundColor: Color(0xE77A85FF),
          foregroundColor: Color(0xFFFFC23F)

         ),
        ),
      ),
    );
  }
}
