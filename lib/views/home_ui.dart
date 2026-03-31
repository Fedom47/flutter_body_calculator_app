import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeUi extends StatefulWidget {
  const HomeUi({super.key});

  @override
  State<HomeUi> createState() => _HomeUiState();
}

class _HomeUiState extends State<HomeUi> {
  @override
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
        currentIndex: 1,
        selectedItemColor: Colors.deepOrange,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'BMI',
          ),
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
    );
  }
}
