class LoginModel {
  final String message;
  final String token;

  LoginModel({required this.message, required this.token});
  factory LoginModel.fromJson(Map jsonData) {
    return LoginModel(
      message: jsonData['message'],
      token: jsonData['token'],
    );
  }
}
// {
//     "message": "Done",
//     "token": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY0ZDc0MGVmNjBkMzJhODk3YzZkZmJkZiIsImVtYWlsIjoiYW1tYXJmYXRoeTUxNkBnbWFpbC5jb20iLCJuYW1lIjoiQW5hcyIsImlhdCI6MTY5MTgzMzIzMH0.tjfELtRcFKu3D7oTZ2vrz239D_1QR_xpXmwiq-1uONM"
// }