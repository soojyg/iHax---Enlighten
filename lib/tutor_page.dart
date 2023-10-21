import 'package:flutter/material.dart';
import 'find_tutor_page.dart';
import 'meeting_room.dart';

class TutorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text(
            'Tutor',
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
            ),
          ),
          elevation: 0,
        ),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(16),
              child: Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  //Align text to the left
                  children: [
                    Text(
                      'Our platform serves as a bridge connecting students with qualified tutors while also offering opportunities for some students to become tutors themselves.',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green,
                      fixedSize: Size(180, 40),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.calendar_month,
                          size: 25,
                          color: Colors.white,
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Check Calendar',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // Find tutor
            Padding(
              padding: EdgeInsets.all(12),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      // Add your navigation logic here
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FindTutor(),
                        ),
                      );
                    },
                    child: CircleWithRectangle(
                      imagePath: 'assets/tutorPic.png',
                      circleText: 'Find Tutor',
                    ),
                  ),
                  Container(
                    width: 200,
                    height: 150,
                    color: Color.fromARGB(255, 217, 217, 217),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              //Align text to the left
                              children: [
                                Text(
                                  'Are you on a quest for knowledge and seeking the guidance of an experienced mentor? Enlighten is here to connect you with top-tier tutors who are passionate',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(5),
                          child: Align(
                            alignment: Alignment.bottomRight,
                            child: GestureDetector(
                              onTap: () {
                                _showMyDialog(
                                    context,
                                    'Find Tutor',
                                    'Are you on a quest for knowledge and seeking the guidance of an experienced mentor? Enlighten is here to connect you with top-tier tutors who are passionate about helping you succeed.'
                                        '\n\nYou can choose the tutor based on your subject, level and learning preferences.'
                                        '\n\nKindly find your perfect tutor here and book the tutoring session!'); // Show the dialog when text is clicked
                              },
                              child: Text(
                                'View more',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 101, 96, 96),
                                  decoration: TextDecoration
                                      .underline, // Add underline to make it look clickable
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // Register as tutor
            Padding(
              padding: EdgeInsets.all(12),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: CircleWithRectangle(
                      imagePath: 'assets/registerTutor.png',
                      circleText: 'Register As\nTutor',
                    ),
                  ),
                  Container(
                    width: 200,
                    height: 150,
                    color: Color.fromARGB(255, 217, 217, 217),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              //Align text to the left
                              children: [
                                Text(
                                  'Enlighten is not just a platform to find tutors; it\'s also your gateway to becoming a trusted tutor yourself.\nShare your knowledge and',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        // SizedBox(height: 5),
                        Padding(
                          padding: EdgeInsets.all(5),
                          child: Align(
                            alignment: Alignment.bottomRight,
                            child: GestureDetector(
                              onTap: () {
                                _showMyDialog(
                                    context,
                                    'Register As Tutor',
                                    'Enlighten is not just a platform to find tutors; it\'s also your gateway to becoming a trusted tutor yourself.'
                                        '\n\nShare your knowledge and passion for your subject or skill. Enjoy the freedom of setting your own schedule and hourly rates. Enlighten allows you to create a tutoring profile that suits your availability and preferences.'
                                        '\n\nKindly build your personal brand as a trusted tutor. Showcase your qualifications, experience, and teaching style on your profile to attract students who resonate with your approach.');
                              },
                              child: Text(
                                'View more',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 101, 96, 96),
                                  decoration: TextDecoration
                                      .underline, // Add underline to make it look clickable
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // Volunteer programme
            Padding(
              padding: EdgeInsets.all(12),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: CircleWithRectangle(
                      imagePath: 'assets/volunteer.png',
                      circleText: 'Volunteer\nProgramme',
                    ),
                  ),
                  Container(
                    width: 200,
                    height: 150,
                    color: Color.fromARGB(255, 217, 217, 217),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              //Align text to the left
                              children: [
                                Text(
                                  'Our Volunteer Programme mobilizes university students and beyond to offer free tutoring to underprivileged students, either online or in person,',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        // SizedBox(height: 5),
                        Padding(
                          padding: EdgeInsets.all(5),
                          child: Align(
                            alignment: Alignment.bottomRight,
                            child: GestureDetector(
                              onTap: () {
                                _showMyDialog(
                                    context,
                                    'Volunteer Programme',
                                    'Our Volunteer Programme mobilizes university students and beyond to offer free tutoring to underprivileged students, either online or in person, through collaboration with NGOs and government agencies.'
                                        '\n\nThis initiative aims to bridge educational disparities by recruiting and training dedicated volunteers, matching them with students in need, and ensuring flexible tutoring options.'
                                        '\n\nThe program\'s success hinges on its ability to provide accessible academic support, foster community engagement, and measure its impact on improving the educational outcomes of underprivileged students, ultimately contributing to a more equitable and inclusive education system.');
                              },
                              child: Text(
                                'View more',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 101, 96, 96),
                                  decoration: TextDecoration
                                      .underline, // Add underline to make it look clickable
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.all(3),
              child: Container(
                width: 350,
                height: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(10), // Adjust the radius
                  color: Color.fromARGB(
                      255, 110, 219, 93), // Your background color
                ),
                child: Padding(
                  padding: EdgeInsets.all(5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Form 4 English Class Starts in 5 minutes',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MeetingRoom()));
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Join',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      );

  void _showMyDialog(BuildContext context, String title, String content) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(content),
          backgroundColor: Color.fromARGB(230, 197, 188, 188),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
              child: Text('Close'),
            ),
          ],
        );
      },
    );
  }
}

class CircleWithRectangleForm extends StatefulWidget {
  @override
  _CircleWithRectangleFormState createState() =>
      _CircleWithRectangleFormState();
}

class _CircleWithRectangleFormState extends State<CircleWithRectangleForm> {
  final TextEditingController imagePathController = TextEditingController();
  final TextEditingController circleTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: imagePathController,
              decoration: InputDecoration(labelText: 'Image Path'),
            ),
            TextField(
              controller: circleTextController,
              decoration: InputDecoration(labelText: 'Text for Circle'),
            ),
            CircleWithRectangle(
              imagePath: imagePathController.text,
              circleText: circleTextController.text,
            ),
          ],
        ),
      ),
    );
  }
}

class CircleWithRectangle extends StatelessWidget {
  final String imagePath;
  final String circleText;

  CircleWithRectangle({
    required this.imagePath,
    required this.circleText,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 0,
          left: 80,
          child: Container(
            width: 75,
            height: 150,
            color: Color.fromARGB(255, 217, 217, 217),
          ),
        ),
        Container(
          width: 150,
          height: 150,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage(imagePath), // Replace with your image path
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Align(
              alignment: Alignment.center,
              child: Text(
                circleText,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
