import 'package:enlighten/mental_health_assessment.dart';
import 'package:enlighten/profile_page.dart';
import 'package:flutter/material.dart';

class DepressionTestResult extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Depression Test Result',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.close, size: 30),
            color: Colors.red,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),

      body:
        Column(
          children: [
            Container(
              width: 422,
              height: 400,
              color: Color.fromARGB(255, 207, 252, 212),
              child:
                  Padding(
                    padding: EdgeInsets.all(20),
                    child:
                    Column(
                      children: [
                        Text('Results',
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        PercentageCircle(percentage: 15),
                      ],
                    ),
                  ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child:
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Your Depression Test Result:',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                  ),
                  ),
                  SizedBox(height: 10),
                  Text('Your overall score on the depression test falls within the normal range, suggesting that you are currently not experiencing significant symptoms of depression. This is positive news and indicates that you are in good emotional health.',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                  ),
                  SizedBox(height: 60),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.green,
                          fixedSize: Size(140, 40), // Adjust the button size as needed
                        ),
                        child:
                            Text(
                              'Read More',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                              ),
                            ),
                        ),
                    ],
                  ),
                ],
              ),
            )

          ],
        )
    );
  }
}

class PercentageCircle extends StatefulWidget {
  final int percentage;

  PercentageCircle({required this.percentage});

  @override
  _PercentageCircleState createState() => _PercentageCircleState();
}

class _PercentageCircleState extends State<PercentageCircle> with SingleTickerProviderStateMixin {
  AnimationController? _controller;
  double _currentPercentage = 0.0;

  @override
  void initState() {
    super.initState();
    // Simulate the percentage animation
    _animatePercentage(widget.percentage.toDouble());
  }

  void _animatePercentage(double targetPercentage) {
    final duration = Duration(seconds: 2); // Animation duration
    final curve = Curves.easeOut;

    // Create a Tween to animate the percentage
    final tween = Tween<double>(
      begin: _currentPercentage,
      end: targetPercentage,
    );

    // Create an AnimationController
    final controller = AnimationController(duration: duration, vsync: this);

    // Attach the tween to the controller
    final animation = tween.animate(CurvedAnimation(
      parent: controller,
      curve: curve,
    ));

    animation.addListener(() {
      setState(() {
        _currentPercentage = animation.value;
      });
    });

    // Start the animation
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 250.0,
          height: 250.0,
          child: Center(
            child: CircularProgressIndicator(
              value: _currentPercentage / 100,
              backgroundColor: Color.fromARGB(255, 192, 253, 198), // Match background color
              valueColor: AlwaysStoppedAnimation<Color>(Color.fromARGB(255, 99, 246, 47)),
              strokeWidth: 150.0,
              semanticsLabel: '',
            ),
          ),
        ),
        SizedBox(height: 20),
        Text(
          '${_currentPercentage.toStringAsFixed(0)}%',
          style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}


// class _PercentageCircleState extends State<PercentageCircle> with SingleTickerProviderStateMixin {
//
//   AnimationController? _controller;
//   double _currentPercentage = 0.0;
//
//   @override
//   void initState() {
//     super.initState();
//     // Simulate the percentage animation
//     _animatePercentage(widget.percentage.toDouble());
//   }
//
//   void _animatePercentage(double targetPercentage) {
//     final duration = Duration(seconds: 2); // Animation duration
//     final curve = Curves.easeOut;
//
//     // Create a Tween to animate the percentage
//     final tween = Tween<double>(
//       begin: _currentPercentage,
//       end: targetPercentage,
//     );
//
//     // Create an AnimationController
//     final controller = AnimationController(duration: duration, vsync: this);
//
//     // Attach the tween to the controller
//     final animation = tween.animate(CurvedAnimation(
//       parent: controller,
//       curve: curve,
//     ));
//
//     animation.addListener(() {
//       setState(() {
//         _currentPercentage = animation.value;
//       });
//     });
//
//     // Start the animation
//     controller.forward();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         AnimatedContainer(
//           duration: Duration(seconds: 2),
//           width: 150.0,
//           height: 150.0,
//           decoration: BoxDecoration(
//             shape: BoxShape.circle,
//             border: Border.all(
//               color: Colors.black,
//               width: 5.0,
//             ),
//           ),
//           child: Center(
//             child: CircularProgressIndicator(
//               value: _currentPercentage / 100,
//               backgroundColor: Colors.white,
//               valueColor: AlwaysStoppedAnimation<Color>(Color.fromARGB(255, 99, 246, 47)),
//               strokeWidth: 8.0,
//             ),
//           ),
//         ),
//         SizedBox(height: 20),
//         Text(
//           '${_currentPercentage.toStringAsFixed(0)}%',
//           style: TextStyle(fontSize: 20),
//         ),
//       ],
//     );
//   }
// }
