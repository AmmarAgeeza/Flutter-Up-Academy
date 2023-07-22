//1.Futrue
/*
void main() {
print(1);
// heavyMethod();
  var future = Future(heavyMethod).catchError((e){
    print(e);
  });
  print(2);

  var result = Future.delayed(Duration(seconds: 3),printData);
}
void printData() {
    print('future');
  }
  int sum(){
    return int.parse('5');
  }
  void heavyMethod(){
    for(int i=0;i<200000000000;i++){
      }  */

void main() {
  print(1);
  var future = Future(sum).then((value) => print(value)).catchError((e) {
    print(e);
  });
  print(2);
  var result = Future.delayed(Duration(seconds: 2), printData);
}

void printData() {
  print('Future');
}

int sum() {
  return 1 + 5;
}
