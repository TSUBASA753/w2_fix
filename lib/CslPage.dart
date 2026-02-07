import 'package:flutter/material.dart';

class CalPage extends StatefulWidget {
  const CalPage({super.key});

  @override
  State<CalPage> createState() => _1CalPageState();
}

class _1CalPageState extends State<CalPage> {
  // สร้าง Controller เพื่อดึงค่าจากช่องกรอก
  final TextEditingController _amountController = TextEditingController();
  final TextEditingController _percentController = TextEditingController();

  double _result = 0;

  void _calculate() {
    setState(() {
      double amount = double.tryParse(_amountController.text) ?? 0;
      double percent = double.tryParse(_percentController.text) ?? 0;
      // สูตร: (จำนวนเต็ม * เปอร์เซ็นต์) / 100
      _result = (amount * percent) / 100;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('เครื่องคิดเลขเปอร์เซ็นต์'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('การคำนวณ %' ,style: const TextStyle(fontSize: 20,fontWeight: FontWeight.w200) ,),
            const SizedBox(height: 10),
            TextField(
              controller: _amountController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'จำนวนเต็ม',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: _percentController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'เปอร์เซ็นต์ (%)',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: _calculate,
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFE0AFA0),
                foregroundColor: const Color(0xFFFF7300),
                padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
              ),
              child: const Text('คำนวณ'),
            ),
            const SizedBox(height: 20),
            Text(
              'คำตอบคือ: $_result',
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}