import 'package:flutter/material.dart';

class AddTaskBottomSheet extends StatelessWidget {
  const AddTaskBottomSheet({super.key});

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
              ),),
              SizedBox(height: 10,),
              TextFormField( decoration: InputDecoration(
                  hintText: 'enter task description'
              ),maxLines: 4,)
            ],
          )),
          SizedBox(height: 10,),
          Text('Select Date',
          style: Theme.of(context).primaryTextTheme.headline2,),
          SizedBox(height: 10,),
          InkWell(onTap: (){
            //show calender
          },
            child: Text('14/10/2023',
              style: Theme.of(context).primaryTextTheme.headline2,
              textAlign: TextAlign.center,),
          ),
          SizedBox(height: 20,),
          ElevatedButton(onPressed: (){}, child: Text("Add",style: Theme.of(context).primaryTextTheme.headline1,))
        ],
      ),
    );
  }
}
