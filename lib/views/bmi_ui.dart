import 'package:flutter/material.dart';

class BmiUi extends StatefulWidget {
  const BmiUi({super.key});

  @override
  State<BmiUi> createState() => _BmiUiState();
}

class _BmiUiState extends State<BmiUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 40, left: 30, right: 30, bottom: 50,
          ),
          child: Center(
            child: Column(
              children: [
                //ส่วนซื้อหน้าจอ และรูป
                //ส่วนการป้อนข้อมูล
                //ส่วนปุ่ม
                //ส่วนแสดงผลข้อมูลที่ไดจากการคำนวน
              ],
            ),
          ),
        ),
      ),
    );
  }
}