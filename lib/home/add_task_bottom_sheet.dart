import 'package:flutter/material.dart';
import 'package:todoapp_2/home/settings_tab.dart';
import 'package:todoapp_2/home/tasks_tab.dart';

class AddTaskBottomSheet extends StatefulWidget {
  @override
  State<AddTaskBottomSheet> createState() => _AddTaskBottomSheetState();
}

class _AddTaskBottomSheetState extends State<AddTaskBottomSheet> {
 String title='';

 String description='';
 DateTime selectedDate= DateTime.now();
 var formkey= GlobalKey<FormState>;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text('Add New Task',
          style: Theme.of(context).primaryTextTheme.headline2,
          textAlign: TextAlign.center,),
          Form(child: Column(
            children: [
              TextFormField( decoration: InputDecoration(
                hintText: 'enter task title'
              ),
              onChanged: (text){
                text= title;
              },

              ),
              SizedBox(height: 10,),
              TextFormField( decoration: InputDecoration(
                  hintText: 'enter task description'
              ),maxLines: 4,
              onChanged: (text){
                text= description;
              },
              )
            ],
          )),
          SizedBox(height: 10,),
          Text('Select Date',
          style: Theme.of(context).primaryTextTheme.headline2,),
          SizedBox(height: 10,),
          InkWell(onTap: (){
            //show calender
            chooseDate();
          },
            child: Text('${selectedDate.day}/${selectedDate.month}/${selectedDate.year}',
              style: Theme.of(context).primaryTextTheme.headline2,
              textAlign: TextAlign.center,),
          ),
          SizedBox(height: 20,),
          ElevatedButton(onPressed: (){}, child: Text("Add",style: Theme.of(context).primaryTextTheme.headline1,))
        ],
      ),
    );
  }

  void chooseDate() async {
    var chosenDate= await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime.now(),
        lastDate: DateTime.now().add(Duration(days: 356))
    );
    if(chosenDate != null){
      selectedDate = chosenDate;
      setState(() {

      });
    }
  }
}

