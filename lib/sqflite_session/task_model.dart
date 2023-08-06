// [{id: 1, title: FLutter, note: SQFLITE, date: 8/8},
// {id: 2, title: FLutter, note: SQFLITE, date: 8/8}]
class TaskModel {
  final int id;
  final String title;
  final String note;
  final String date;

  TaskModel({
    required this.id,
    required this.title,
    required this.note,
    required this.date,
  });
  //named Constructor
  factory TaskModel.fromJson(Map<String, dynamic> jsonData) {
    return TaskModel(
        id: jsonData["id"],
        title: jsonData["title"],
        note: jsonData["note"],
        date: jsonData["date"]);
  }
}
