import 'package:flutter/material.dart';

class MyUpload extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Upload',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.green, // Change the color of the back arrow ('<-') here
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(16),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'What do you want to learn?',
                  prefixIcon: Icon(Icons.search),
                ),
                onChanged: (query) {
                  // Implement your search logic here
                  // You can update the UI based on the user's input
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Image.asset(
                        ('assets/img_4.png'),
                        width: 180,
                        height: 220,
                      ),
                      SizedBox(height: 10), // Space between image and text
                      Text(
                        'Soalan Percubaan CHS',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 10),
                  Column(
                    children: [
                      Image.asset(
                        ('assets/img_6.png'),
                        width: 180,
                        height: 220,
                      ),
                      SizedBox(height: 10),
                      Text(
                        'My_notes.pdf',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Color(0xFFEFFFF1),
    );
  }
}
