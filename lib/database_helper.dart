// import 'package:path_provider/path_provider.dart';
// import 'package:sqflite/sqflite.dart';
// class DBhelper
// {
//   var userTable='mytable';      var userId='id';
//   var userTitle='title';      var userDesc='desc';

//   Future<Database>openDB()async
//   {
//     var directory = await getApplicationDocumentsDirectory();
//     await directory.create(recursive: true);
//     var path = "${directory.path}mydatabase.db";

//     return await openDatabase(path,version: 1,onCreate: (db, version) {
//       db.execute('create table $userTable ( $userId integer primary key autoincrement, $userTitle text , $userDesc text , ) ');
//     });
//   }

//   void addData(String title , String desc )async
//   {
//     var mydb=await openDB();
//     mydb.insert(userTable, {userTitle:title , userDesc:userDesc});
//   }
  
//   Future<List<Map<String,dynamic>>> fetchData()async
//   {
//     var mydb=await openDB();
//     return mydb.query(userTable);
//   }

// }