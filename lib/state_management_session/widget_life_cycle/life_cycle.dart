// import 'package:flutter/material.dart';
//
// class WidgetLifeCycle extends StatefulWidget {
//   const WidgetLifeCycle({Key? key}) : super(key: key);
//
//   @override
//   State<WidgetLifeCycle> createState() => _WidgetLifeCycleState();
// }
//
// class _WidgetLifeCycleState extends State<WidgetLifeCycle> {
//
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     print('init state');
//   }
//   @override
//   void dispose() {
//     // TODO: implement dispose
//     super.dispose();
//     print('dispose');
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     print('build method');
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Widget Life Cycle'),
//       ),
//       body: Center(
//         child: MaterialButton(
//           color: Colors.blueAccent,
//           onPressed: () {
//
//           },
//           child:  const Text('Press'),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

class WidgetLifeCycle extends StatefulWidget {
  const WidgetLifeCycle({Key? key}) : super(key: key);

  @override
  State<WidgetLifeCycle> createState() => _WidgetLifeCycleState();
}

class _WidgetLifeCycleState extends State<WidgetLifeCycle> {
  final TextEditingController _controller=TextEditingController();
  int numberOfBuild=1;
//initstate
  @override
  void initState() {
    super.initState();
    print('init state');
  }
@override
  void dispose() {
    print('dispose');
    _controller.clear();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    print('build method');
print(numberOfBuild++);
    return Scaffold(
      appBar: AppBar(
        title: const Text('WidgetLifeCycle'),
      ),
      body: Center(
        child: MaterialButton(
          onPressed: () {
           Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (_) => Scaffold(
                          appBar: AppBar(
                            automaticallyImplyLeading: false,
                          ),
                          body: const Center(
                            child: Text('Screen 2'),
                          ),
                        )));
          },
          child: const Text('Navigate'),
        ),
      ),
    );
  }
}
