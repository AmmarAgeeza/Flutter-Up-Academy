// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';

// class AnimatedContainerExample extends StatefulWidget {
//   const AnimatedContainerExample({super.key});

//   @override
//   State<AnimatedContainerExample> createState() =>
//       _AnimatedContainerExampleState();
// }

// class _AnimatedContainerExampleState extends State<AnimatedContainerExample> {
//   Color _color = Colors.grey;
//   double _radius = 20.0;
//   double _width = 100.0;
//   double _height = 100.0;

//   void _setAnimationValues() {
//     setState(() {
//       _color = Colors.orange;
//       _radius = 90.0;
//       _width = 400.0;
//       _height = 400.0;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Animated Container Example"),
//       ),
//       body: Center(
//         child: GestureDetector(
//           onTap: () {
//             _setAnimationValues();
//           },
//           child: AnimatedContainer(
//             curve: Curves.bounceOut,
//             width: _width,
//             height: _height,
//             duration: const Duration(milliseconds: 400),
//             decoration: BoxDecoration(
//                 color: _color, borderRadius: BorderRadius.circular(_radius)),
//             child: Image.asset("assets/jerry.png"),
//           ),
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//           child: const Icon(Icons.animation),
//           onPressed: () {
//             setState(() {
//               _color = Colors.grey;
//               _radius = 20.0;
//               _width = 100.0;
//               _height = 100.0;
//             });
//           }),
//     );
//   }
// }
import 'package:flutter/material.dart';

class AnimatedContainerEx extends StatefulWidget {
  const AnimatedContainerEx({super.key});

  @override
  State<AnimatedContainerEx> createState() => _AnimatedContainerExState();
}

class _AnimatedContainerExState extends State<AnimatedContainerEx> {
  double w = 150;
  double h = 150;
  Color color = Colors.red;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(
            () {
              w = w == 300 ? 50 : 300;
              h = h == 300 ? 50 : 300;
              color = color == Colors.green ? Colors.red : Colors.green;
            },
          );
        },
        child: const Icon(Icons.animation),
      ),
      body: Center(
        child: AnimatedContainer(
          curve: Curves.easeIn,
          duration: const Duration(seconds: 2),
          width: w,
          height: h,
          color: color,
        ),
      ),
    );
  }
}
