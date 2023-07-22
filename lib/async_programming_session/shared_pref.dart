import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPref extends StatefulWidget {
   const SharedPref({super.key});

  @override
  State<SharedPref> createState() => _SharedPrefState();
}

class _SharedPrefState extends State<SharedPref> {
String? value='none';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          //data
       Text(value!),
          const SizedBox(
            height: 55,
          ),
          //set data
          ElevatedButton(
              onPressed: () async {
                final sp = await SharedPreferences.getInstance();
                await sp
                    .setString('onBoarding', 'done')
                    .then((value) => print('finish'))
                    .catchError((e) {
                  print(e);
                });
              },
              child: const Text('Set Data')),
          const SizedBox(
            height: 55,
          ),
          //get data
          ElevatedButton(
              onPressed: () async {
                final sp = await SharedPreferences.getInstance();
             setState(() {
                value=   sp.getString('onBoarding')??'none';
             });
                print(value);
              },
              child: const Text('Get Data')),
        ]),
      ),
    );
  }
}

void setData() async {
  final sp = await SharedPreferences.getInstance();
  sp.setString('onBoading', 'done');
}
