import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'mydatabase.dart';
class dis extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    return disstate();
  }
}
class disstate extends State<dis>
{
  var up1=TextEditingController();
  var up2=TextEditingController();

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
          title: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(child: Text(notes[index][DBhelper().userTitle].toString())),

              Row(mainAxisAlignment: MainAxisAlignment.end,
                    children: [     

              ElevatedButton(onPressed: ()async{   //    Update Button
                up1.text=notes[index][DBhelper().userTitle];
                up2.text=notes[index][DBhelper().userDesc];
                          showDialog(context: context, builder: (context){
                            return AlertDialog(
                              title: Text('Update'),
                              content: Container(height: 147,color:Color.fromRGBO(214, 225, 235, 1),
                                child: Column(
                                  children: [                         SizedBox(height: 1),
                                    TextField(controller: up1,decoration: InputDecoration(border: OutlineInputBorder(),label: Text('Enter Title'))),
                                                                      SizedBox(height: 20),
                                    TextField(controller: up2,decoration: InputDecoration(border: OutlineInputBorder(),label: Text('Enter Desc'))),
                                  ],
                                ),
                              ),
//    actions   :   showDialog    Start
                    actions: [    //  Update  

Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
  children: [
                    ElevatedButton(onPressed: (){Navigator.pop(context);}, child: Text('Cencel')),

                    ElevatedButton(onPressed: (){
                                var local_id=notes[index][DBhelper().userId];
                                var local_title=up1.text.toString();
                                var local_desc=up2.text.toString();
                                DBhelper().update(local_id,local_title, local_desc);
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>dis()));
                               }, child: Text('Update',style:TextStyle(color:Color.fromARGB(255, 62, 23, 23)))
                              ),
  ],
)


                              ],
                            );
                          });
                                //  elevatedButton Icon
                                }, child: const Icon(Icons.update,color:Colors.green),),SizedBox(width: 10),


              ElevatedButton(onPressed: (){   //    Delete Button
                  var d=notes[index][DBhelper().userId];
                          DBhelper().delete(d);
                                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>dis()));
                                          setState(() {});
                                                 }, child: const Icon(Icons.delete,color:Colors.red),),

                ],
              )
                          ],

          ),
          subtitle: Text(notes[index][DBhelper().userDesc].toString()),
        )),itemCount:notes.length ,),
      )


    );
  }
}