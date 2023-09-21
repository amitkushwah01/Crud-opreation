import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:practice_database/UI.dart';
import 'package:practice_database/display.dart';
import 'mydatabase.dart';
class add extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    return addstate();
  }
}
class addstate extends State<add>
{
  var TitleController=TextEditingController();
  var DescController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Add Something'),),
      body:Container(
        color:Color.fromRGBO(111, 179, 235, 1),
        child:Column(
          children:  [                          SizedBox(height: 20),
                TextField(controller: TitleController,decoration: InputDecoration(border: OutlineInputBorder(),label: Text('Enter '))),
                                                SizedBox(height: 20),
                TextField(controller: DescController,decoration: InputDecoration(border: OutlineInputBorder(),label: Text('Enter '))),

//    Save Button
                // ElevatedButton(onPressed: (){
                //   var local_title=TitleController.text.toString();
                //   var local_desc=DescController.text.toString();
                //   DBhelper().addData(local_title, local_desc);
                //   Navigator.push(context, MaterialPageRoute(builder: (context)=>dis()));
                // }, child: Text(' save ')),
                                    SizedBox(height: 20),
                Container(height: 50,width: 110,child: button(btnName: ' Save ', VoidCallback: (){
                  var local_title=TitleController.text.toString();
                  var local_desc=DescController.text.toString();
                  DBhelper().addData(local_title, local_desc);

                    Navigator.push(context, MaterialPageRoute(builder: (context)=>dis()));
                  }),
                )

          ],
        )
      )
    );
  }
}