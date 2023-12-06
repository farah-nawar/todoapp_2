import 'package:flutter/material.dart';
import 'item_task.dart';
import 'package:todoapp_2/my_theme.dart';

class TasksTab extends StatelessWidget {

  final DateTime selectedDate;

  TasksTab(this.selectedDate);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: myThemeData.backgroundLightcolor,
      child: Column(
        children: [
          AppBar(title: Text('Selected Date: $selectedDate'),),
          Expanded(
            child: ListView.builder(
                itemBuilder: (context,index){
                  return ItemTaskList();
                }

            ),
          ),
        ],
      ),



    );
  }
}
