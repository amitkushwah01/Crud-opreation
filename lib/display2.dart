import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'mydatabase.dart';
class dis2 extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    return disstate();
  }
}
class disstate extends State<dis2>
{
  List<Map<String,dynamic>>notes=[];
  @override
  void initState() {
    super.initState();
    getData();
  }
  getData()async
  {
    notes=await DBhelper().fetchData();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Data')),


      body:Container(color:Color.fromARGB(255, 150, 204, 248),


        child:ListView.builder(itemBuilder: ((context, index) => ListTile(
          leading: Text(notes[index][DBhelper().userId].toString()),
          title: Text(notes[index][DBhelper().userTitle].toString()),
          subtitle: Text(notes[index][DBhelper().userDesc].toString()),
        )),itemCount:notes.length ,),


      )


    );
  }
}