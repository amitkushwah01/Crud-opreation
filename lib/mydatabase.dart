import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DBhelper
{
  var userTable='mytable';      var userId='id';
  var userTitle='title';      var userDesc='desc';
  Future<Database> openDB() async
  {
    var directory=await getApplicationDocumentsDirectory();

    await directory.create(recursive:true);

    var path=directory.path+'myData.db';

    return await openDatabase(path,version: 1,onCreate: ((db, version) {
      db.execute("create table $userTable ($userId integer primary key autoincrement, $userTitle text, $userDesc text)");
    }));
  }
  void addData(String title , String desc)async
  {
    var myDB=await openDB();
      myDB.insert(userTable,{ userTitle:title,userDesc:desc});
  }

  void delete(int id)async
  {
    var myDB=await openDB();
      myDB.delete(userTable,where:'$userId=?' , whereArgs: ['$id'] );
  }
  void update( int id ,String title , String desc  )async
  {
    var mydb=await openDB();
    mydb.update(userTable, {userTitle:title , userDesc:desc},where: '$userId=$id');
  }

  Future<List<Map<String,dynamic>>> fetchData()async
  {
    var myDB=await openDB();
    return myDB.query(userTable);
  }

}
