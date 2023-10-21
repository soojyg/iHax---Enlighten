import 'package:flutter/material.dart';

class MeetingRoom extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Form 4 English Class',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 5),
              Text(
                'Tutor: Victoria',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          backgroundColor: Colors.white,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.phone, size: 30),
              color: Colors.red,
              onPressed: () {
                Navigator.pop(context); // Navigate to previous page
              },
            ),
          ],
        ),
        body: Padding(
            padding: EdgeInsets.all(16),
            child: Center(
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    ('assets/classPic.png'),
                    width: 380,
                    height: 280,
                  ),
                  SizedBox(height: 85),
                  Text('1.52pm',
                  style: TextStyle(
                    color: Color.fromARGB(255, 32, 119, 35),
                    fontSize: 12,
                  ),
                  ),
                  SizedBox(height: 5),
                  Image.asset(
                    ('assets/chatMeeting.png'),
                    width: 350,
                    height: 280,
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: EdgeInsets.all(30),
                    child:
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Circle(icon: Icons.mic_off),
                        Circle(icon: Icons.photo_camera_front),
                        Circle(icon: Icons.mobile_screen_share),
                        Circle(icon: Icons.front_hand_sharp),
                        Circle(icon: Icons.menu),
                      ],
                    ),
                  ),

                ],
              ),
            ),
        ),

      );
}

class Circle extends StatefulWidget {
  final IconData icon;

  Circle({
    required this.icon,
  });

  @override
  _CircleState createState() => _CircleState();
}

class _CircleState extends State<Circle> {
  Color circleColor = Color.fromARGB(255, 222, 253, 217);
  bool isColorChanged = false;

  void _toggleColor() {
    setState(() {
      if (isColorChanged) {
        circleColor = Color.fromARGB(255, 222, 253, 217); // Original color
      } else {
        circleColor = Colors.green;
      }
      isColorChanged = !isColorChanged; // Toggle the color change status
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _toggleColor, // Call _toggleColor when the circle is tapped
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: circleColor,
        ),
        child: Center(
          child: Icon(widget.icon),
        ),
      ),
    );
  }
}

