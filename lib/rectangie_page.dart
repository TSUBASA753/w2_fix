import 'package:flutter/material.dart';

class RectanglePage extends StatefulWidget {
  const RectanglePage({super.key});

  @override
  State<RectanglePage> createState() => RectanglePageState();
}

class RectanglePageState extends State<RectanglePage> {
  // พท.สี่เหลี่ยม = ก * ย
  // Output =  input * input

  int _width = 0;
  int _length = 0;
  int _area = 0;

  TextEditingController _widthCtrl = TextEditingController();
  TextEditingController _lengthCtrl = TextEditingController();

  final InputDecoration textFieldStyle = InputDecoration(
    filled: true,
    fillColor: Color(0xE4D6D6D6),
    contentPadding: EdgeInsets.symmetric(horizontal: 20),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(30),
    ),
  );

  void calRectangle() {
    _width = int.tryParse(_widthCtrl.text) ?? 0;
    _length = int.tryParse(_lengthCtrl.text) ?? 0;

    setState(() {
      _area = _width * _length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('หาพื้นที่สี่เหลี่ยม'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: 30),
            Text(
              "กว้าง $_width ม.  ยาว $_length ม.  พื้นที่คือ $_area ตร.ม.",
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            TextField(
              controller: _widthCtrl,
              decoration: textFieldStyle.copyWith(
                label: Text('กว้าง'),
                hintText: 'กรอกความกว้าง',
              ),
            ), // ช่องกรอกข้อมูล

            SizedBox(height: 20),
            TextField(
              controller: _lengthCtrl,
              decoration: textFieldStyle.copyWith(
                label: Text('ยาว'),
                hintText: 'กรอกความยาว',
              ),
            ), // ช่องกรอกข้อมูล
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => calRectangle(),
              child: Text('คำนวณ'),
            )
          ],
        ),
      ),
    );
  }
}