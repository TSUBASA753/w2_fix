import 'package:flutter/material.dart';
import 'package:w2_31/CslPage.dart';
import 'rectangie_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'EiEi',
      theme: ThemeData(


        appBarTheme: AppBarTheme(
            backgroundColor: Color(0xFFE0AFA0),
            foregroundColor: Color(0xFFFF7300)
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0x00000000)),
        scaffoldBackgroundColor: const Color(0xF0F3E6D9),
      ),
      routes: {
        '/' : (context) => MyHomePage(),
        '/c' : (context) => CalPage(),
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'โปรแกรมคำนวณหาพื้นที่สี่เหลี่ยม',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w100),
            ),
            const SizedBox(height: 20),

            const SizedBox(height: 25), // เพิ่มระยะห่าง
            TextButton(
              onPressed: () => Navigator.pushNamed(context, '/rtg'),
              style: TextButton.styleFrom(
                backgroundColor: const Color(0xFFE0AFA0),
                foregroundColor: const Color(0xFFFF7300),
                padding: const EdgeInsets.symmetric(
                    horizontal: 30, vertical: 15),
              ),
              child: const Text('Start', style: TextStyle(fontSize: 18)),
            ),
            const SizedBox(height: 20),
            const Text(
              'โปรแกรมคำนวณ',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w100),
            ),
            const SizedBox(height: 20),
            const Icon(Icons.percent_sharp, // icon %
              size: 50,
            ),
            const SizedBox(height: 25), // เพิ่มระยะห่าง
            TextButton(
              onPressed: () => Navigator.pushNamed(context, '/c'),
              style: TextButton.styleFrom(
                backgroundColor: const Color(0xFFE0AFA0),
                foregroundColor: const Color(0xFFFF7300),
                padding: const EdgeInsets.symmetric(
                    horizontal: 30, vertical: 15),
              ),
              child: const Text('Start', style: TextStyle(fontSize: 18)),
            ),
          ],
        ),
      ),
    );
  }
}