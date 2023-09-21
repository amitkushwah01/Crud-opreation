import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class upd extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    return updstate();
  }
}
class updstate extends State<upd>
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        child:Row(
          children: [
            TextField(),
          ],
        ),
      )
    );
  }
}