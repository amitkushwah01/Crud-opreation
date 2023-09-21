import 'package:flutter/material.dart';
import 'package:practice_database/UI.dart';
import 'package:practice_database/addNew.dart';
import 'package:practice_database/display.dart';
import 'package:practice_database/slas.dart';

void main()
{
  runApp(apple());
}
class apple extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Amit Kushwah',
    debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),home:Splash()
    );
  }
}
class mainpage extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    return pagestate();
  }
}
class pagestate extends State<mainpage>
{
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Application')),
      body:Container(
        color:Color(0xFFFF9800),
        child:Center(
          child: Column(
            children:  [
                                               SizedBox(height: 100,),
              Text('Welcome Guys',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),),
                                               SizedBox(height: 100,),

              Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [

                  Container(height: 100,width: 110,child: button(btnName: 'Add Page', VoidCallback: (){   
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>add()));    })),

                  Container(height: 100,width: 110,child: button(btnName: 'Show Data', VoidCallback: (){   
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>dis()));    })),

                ],
              ),


            
            ],
          ),
        )
      )
    );
  }
}