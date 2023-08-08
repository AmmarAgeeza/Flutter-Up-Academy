// jsonData= {
//     "userId": 1,
//     "id": 1,
//     "title": "quidem molestiae enim"
//   },
class AlbumModel {
  final int userId;
  final int id;
  final String title;

  AlbumModel({
    required this.userId,
    required this.id,
    required this.title,
  });
  factory AlbumModel.fromJson(Map<String, dynamic> jsonData) {
    return AlbumModel(
      id: jsonData['id'],
      userId: jsonData['userId'],
      title: jsonData['title'],
    );
  }
}
