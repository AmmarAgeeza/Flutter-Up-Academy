void main() async{
  print(1);
  try{
      var future = await Future(sum);

  }
  on DataException catch (e){
    print(e.message);
  } 
  catch(e){
    print(e);
  }
  print(3);
}

void printData() {
  print('future');
}

int sum() {
  throw DataException('message');
  // return int.parse('5');
}

void heavyMethod() {
  for (int i = 0; i < 200000000000; i++) {}
}
class DataException {
  final String message;

  DataException(this.message);
}