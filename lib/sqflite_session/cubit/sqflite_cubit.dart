import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ui/sqflite_session/cubit/sqflite_state.dart';
import 'package:sqflite/sqflite.dart';

import '../task_model.dart';

class SqfliteCubit extends Cubit<SqfliteState> {
  SqfliteCubit() : super(SqfliteInitial());
  // String data = 'fkanfljabfjabf;lds'
  //     'd'
  //     'asklfhn;da';
  //! create DataBase and Create Table
  late Database db;
  void createDataBase() async {
    try {
      db = await openDatabase(
        'Todoapp.db',
        version: 1,
        onCreate: (Database db, int v) {
          db.execute(
              '''CREATE TABLE Tasks
            (id INTEGER PRIMARY KEY,
            title TEXT,note TEXT ,
            date TEXT)''');
        },
        onOpen: (db) {},
      );
      // getFromDB();
      // updatedDB(id: 1, title: 'Dart');
      deleteFromDB(1);
      // insetToDB();
      print('Database created');
    } catch (e) {
      print(e.toString());
    }
  }

  //!CRUD
  //insert
  void insetToDB({
    required String title,
    required String note,
    required String date,
  }) async {
    await db.rawInsert(
        '''
INSERT INTO Tasks 
(title,note,date)
 VALUES 
 ($title,$note,$date)
''').then((value) {
      print('Data inserted Sucessfully + $value');
    });
  }

  //get
  void getFromDB() async {
    List<Map<String, Object?>> data =
        await db.rawQuery('''
SELECT * FROM Tasks
''');
    print('Get From Database ');
    List<TaskModel> tasksList = data.map((e) => TaskModel.fromJson(e)).toList();
    print(tasksList[0].title);
    print(data);
  }

// update
  void updatedDB({required String title, required int id}) async {
    await db.rawUpdate(
        '''
  Update Tasks set title = ? where id = ?
''', [title, id]);
    getFromDB();
  }

  //delete
  void deleteFromDB(id) async {
    await db.rawDelete(''' DELETE FROM Tasks WHERE id = ?''', [id]).then(
        (value) => print('Item Deleted Successfully + $value'));
    getFromDB();
  }
}

class DB {
  void getData() {}
}
