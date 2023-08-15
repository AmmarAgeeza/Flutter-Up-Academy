import 'dart:io';

void main() {
  try {
    int sum = int.parse('11');
    formatData();
  } on FormatException catch (e) {
    print(e.message);
  } on SocketException catch (e) {
    print('please check your internet connection');
  }
    on ServerException catch (e) {
      print(e.message);
    }
   catch (e) {
    print(e);
  } finally {
    print('done');
  }
}

void formatData() {
  print('data');
  throw ServerException('ServerException');
}

class ServerException implements Exception {
  final String message;

  ServerException(this.message);
}


void mainMethod(){
  try{
    some();
  }
  on UserDivededByZero catch(e){
    print(e.message);
  }
}
void some(){
  //action
int  num =0;
  if (num == 0){
    throw UserDivededByZero('user divied number by zero');
  }
}
class UserDivededByZero implements Exception{
  final String message ;

  UserDivededByZero(this.message);
}