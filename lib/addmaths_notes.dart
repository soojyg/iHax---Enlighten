import 'package:flutter/material.dart';

class AddMathNotes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Additional Mathematics',
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
                  // Update the UI based on the user's input
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
                        ('assets/img.png'),
                        width: 180,
                        height: 220,
                      ),
                      SizedBox(height: 10), // Space between image and text
                      Text(
                        'Add Maths Form 4 Notes',
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
                        ('assets/img_2.png'),
                        width: 180,
                        height: 220,
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Add Maths Form 5 Notes',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ],
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
                        ('assets/img_3.png'),
                        width: 180,
                        height: 220,
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Differentiation Tutorial',
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
                        ('assets/img_5.png'),
                        width: 180,
                        height: 220,
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Practice 1.10 Answer',
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
