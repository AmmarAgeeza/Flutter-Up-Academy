import 'package:flutter/material.dart';

class WidgetsInteractive extends StatelessWidget {
  const WidgetsInteractive({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widgets Interactive'),
      ),
      body: Center(
          child: Column(
        children: [
          //! TextButton
          TextButton(
            onPressed: () {
              print('TextButton');
            },
            onLongPress: () {
              print('onLongPress');
            },
            child: const Text('Text Button'),
          ),
          InkWell(
              onTap: () {
                print('Ink');
              },
              child: const Text(
                'InkWell',
                style: TextStyle(fontSize: 50),
              )),
          GestureDetector(
              onTap: () {
                print('GestureDetector');
              },
              child: const Text(
                'GestureDetector',
                style: TextStyle(fontSize: 50),
              )),

          //! Elevated Button
          SizedBox(
            width: double.infinity,
            height: 50,
            child: ElevatedButton(
              onPressed: () {
                print('ElevatedButton');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepOrange,
                foregroundColor: Colors.black,
              ),
              child: const Text('ElevatedButton'),
            ),
          ),
          SizedBox(
            width: double.infinity,
            height: 50,
            child: ElevatedButton(
              onPressed: () {
                print('Login');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepOrange,
                foregroundColor: Colors.black,
              ),
              child: const Text('Login'),
            ),
          ),
          //! Icon Button
          IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
          //! ElevatedButton with icon
          ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.add),
              label: const Text('add')),
          //! MaterialButton
          MaterialButton(
            onPressed: () {},
            child: const Text('MaterialButton'),
          ),
          //OutlinedButton
          OutlinedButton(
            onPressed: () {},
            child: const Text('OutlinedButton'),
          ),
          textResualbleCompnent('Flutter'),
          textResualbleCompnent('Up'),
          textResualbleCompnent('Acadey'),
          textResualbleCompnent('2024'),
          cutomButton((){}, 'title'),
          cutomButton((){}, 'title'),
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (_) {
            return Scaffold(
                appBar: AppBar(
                  title: const Text('Widgets Interactive'),
                ),
                body: Builder(builder: (context) {
                  return Center(
                    child: TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('Back'),
                    ),
                  );
                }));
          }));
        },
        tooltip: 'Outlined',
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget textResualbleCompnent(String data) {
    return Text(
      data,
      style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
    );
  }

 
}

num number() {
  return 5;
}
 Widget cutomButton(Function() onPressed, String title) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
                backgroundColor: Colors.yellow,
                foregroundColor: Colors.black,
              ),
      child: Text(title),
    );
  }