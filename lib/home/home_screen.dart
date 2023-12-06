import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todoapp_2/home/add_task_bottom_sheet.dart';
import 'package:todoapp_2/home/settings_tab.dart';
import 'package:todoapp_2/home/calender.dart';

class HomeScreen extends StatefulWidget {
  static const String routename = 'HomeScreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "To Do List",
          style: Theme.of(context).primaryTextTheme.headline1,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          addTaskBottomSheet();
        },
        child: Icon(Icons.add),
        shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.white, width: 5),
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 12,
        child: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: (index) {
            selectedIndex = index;
            setState(() {});
          },
          items: [
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/images/list_icon.png')),
              label: "Tasks",
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/images/settings_icon.png')),
              label: "Settings",
            )
          ],
        ),
      ),
      body: tabs[selectedIndex],
    );
  }
  List<Widget> tabs=[
    CalendarScreen(),
    SettingsTab(),
  ];
  void addTaskBottomSheet(){
    showModalBottomSheet(
      context: context,
      builder: (context)=> AddTaskBottomSheet(),
    );
  }
}
