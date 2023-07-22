import 'package:flutter/material.dart';

class FutureApp extends StatelessWidget {
  const FutureApp({super.key});

  // Future<void> getData() async {
  //   print('ss');
  // }
  void getData() {
    Future.delayed( const Duration(seconds: 3), () {
      print(3);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Future App'),
      ),
      body: FutureBuilder(
        future: Future.delayed(const Duration(seconds: 3), () {
          return '3';
        }),
        builder: (context, snapShot) {
          return  Center(
            // child: snapShot.hasData? Text(snapShot.data!):const CircularProgressIndicator(),
            child: snapShot.connectionState==ConnectionState.done? Text(snapShot.data!):const CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
