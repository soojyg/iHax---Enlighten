import 'package:flutter/material.dart';
import 'mental_health_assessment.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text(
            'Profile',
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
            ),
          ),
          elevation: 0,
        ),
        body: Column(
          children: [
            Container(
              width: 422,
              height: 211,
              color: Color.fromARGB(255, 207, 252, 212),
              child: Center(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        ('assets/img_1.png'),
                        width: 80,
                        height: 80,
                      ),
                      SizedBox(height: 10),
                      ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Color.fromARGB(255, 207, 252, 212)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              side: BorderSide(color: Colors.green),
                              // Set the border color
                              borderRadius: BorderRadius.circular(
                                  10), // Set the border radius
                            ),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Edit Profile',
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
                  SizedBox(width: 10),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Neoneo',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 15),
                          Text(
                            'neoneoo@gmail.com',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Form 4 Student',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            '50 followers  | 126 following',
                            style: TextStyle(
                              color: Color.fromARGB(255, 125, 125, 125),
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              )),
            ),
            Padding(
                padding: EdgeInsets.all(30),
                child: Center(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          NavigatableText(
                            text: 'Mental Health Assessment',
                            icon: Icons.health_and_safety,
                            destinationPage: MentalHealthAssessment(),
                          ),
                        ],
                      ),
                      SizedBox(height: 35),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          NavigatableText(
                            text: 'Downloads',
                            icon: Icons.download,
                          ),
                        ],
                      ),
                      SizedBox(height: 35),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          NavigatableText(
                            text: 'Settings',
                            icon: Icons.settings,
                          ),
                        ],
                      ),
                      SizedBox(height: 35),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          NavigatableText(
                            text: 'Languages',
                            icon: Icons.language,
                          ),
                        ],
                      ),
                      SizedBox(height: 35),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          NavigatableText(
                            text: 'Help',
                            icon: Icons.help,
                          ),
                        ],
                      ),
                      SizedBox(height: 35),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          NavigatableText(
                            text: 'Feedback',
                            icon: Icons.feedback,
                          ),
                        ],
                      ),
                      SizedBox(height: 35),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          NavigatableText(
                            text: 'Log Out',
                            icon: Icons.logout,
                          ),
                        ],
                      ),
                    ],
                  ),
                )),
          ],
        ),
      );
}

class NavigatableText extends StatelessWidget {
  final String text;
  final IconData icon;
  final VoidCallback? onTap;
  final Widget? destinationPage;

  NavigatableText({
    required this.text,
    required this.icon,
    this.onTap,
    this.destinationPage,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (destinationPage != null) {
          // Navigate to the specified destination page
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => destinationPage!));
        }
        ;
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 30,
            color: Colors.green,
          ),
          SizedBox(width: 15),
          Text(
            text,
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
