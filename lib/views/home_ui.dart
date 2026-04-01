import 'package:flutter/material.dart';
import 'package:flutter_body_calculator_app/views/about_ui.dart';
import 'package:flutter_body_calculator_app/views/bmi_ui.dart';
import 'package:flutter_body_calculator_app/views/bmr_ui.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeUi extends StatefulWidget {
  const HomeUi({super.key});

  @override
  State<HomeUi> createState() => _HomeUiState();
}

class _HomeUiState extends State<HomeUi> {
  //สร้างตัวแปรเพื่อเก็บค่าหมายเลขของหน้าที่ถูกเลือกใน BottomNavigationBar
  int selectedIndex = 1;
  //สร้างตัวแปรเพื่อเก็บหน้าที่จะแสดงใน Body ตามหมายเลขที่ถูกเลือกใน BottomNavigationBar
  //ข้อมูลในตัวแปรนี้จะเป็น List จะมีindex 0,1,2 ตามลำดับของหน้าที่ถูกสร้างขึ้นมา
  List subPage = [BmiUi(), AboutUi(), BmrUi()];

  Widget build(BuildContext context) {
    return Scaffold(
      //ส่วนของ AppBar-----------------------------------------
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text(
          'Body health calculator',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      //ส่วนของ ButtomNavigationBar-----------------------------------------
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        currentIndex: selectedIndex,
        selectedItemColor: Colors.deepOrange,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'BMI'),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'เกี่ยวกับเรา',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.personRunning),
            label: 'Settings',
          ),
        ],
      ),
      //ส่วนของ Body-----------------------------------------
      body: subPage[selectedIndex],
    );
  }
}
