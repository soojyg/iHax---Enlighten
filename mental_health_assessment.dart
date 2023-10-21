import 'package:enlighten/profile_page.dart';
import 'package:flutter/material.dart';
import 'depression_test.dart';

class MentalHealthAssessment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mental Health Assessment',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.green, // Change the color of the back arrow ('<-') here
        ),
      ),

      body:
          Center(
            child:
              Padding(
                padding: EdgeInsets.all(20),
                child:
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 400,
                      height: 300,
                      // color: Colors.green,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: Colors.green, // Set the border color
                          width: 2.0,          // Set the border width
                        ),
                      ),
                      child:
                          Padding(
                            padding: EdgeInsets.all(10),
                            child:
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                              children:[
                                Text('Previous Results',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                                ),
                                ],
                                ),

                                SizedBox(height: 20),
                                Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text('Depression Test',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 5),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: 330, // Set the width as needed
                                          height: 20, // Set the height as needed
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.black, // Border color
                                              width: 1.0, // Border width
                                            ),
                                            borderRadius: BorderRadius.circular(5), // Adjust the radius as needed
                                          ),
                                          child: LinearProgressIndicator(
                                            backgroundColor: Colors.transparent, // Transparent background
                                            valueColor: AlwaysStoppedAnimation(Colors.green), // Fill color
                                            value: 0.1, // Progress value (0.0 to 1.0)
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),

                                SizedBox(height: 10),
                                Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text('Anxiety Test',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 5),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: 330, // Set the width as needed
                                          height: 20, // Set the height as needed
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.black, // Border color
                                              width: 1.0, // Border width
                                            ),
                                            borderRadius: BorderRadius.circular(5), // Adjust the radius as needed
                                          ),
                                          child: LinearProgressIndicator(
                                            backgroundColor: Colors.transparent, // Transparent background
                                            valueColor: AlwaysStoppedAnimation(Colors.red), // Fill color
                                            value: 0.8, // Progress value (0.0 to 1.0)
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),

                                SizedBox(height: 10),
                                Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text('ADHD Test',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 5),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: 330, // Set the width as needed
                                          height: 20, // Set the height as needed
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.black, // Border color
                                              width: 1.0, // Border width
                                            ),
                                            borderRadius: BorderRadius.circular(5), // Adjust the radius as needed
                                          ),
                                          child: LinearProgressIndicator(
                                            backgroundColor: Colors.transparent, // Transparent background
                                            valueColor: AlwaysStoppedAnimation(Colors.green), // Fill color
                                            value: 0, // Progress value (0.0 to 1.0)
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),

                                SizedBox(height: 10),
                                Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text('Bipolar Test',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 5),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: 330, // Set the width as needed
                                          height: 20, // Set the height as needed
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.black, // Border color
                                              width: 1.0, // Border width
                                            ),
                                            borderRadius: BorderRadius.circular(5), // Adjust the radius as needed
                                          ),
                                          child: LinearProgressIndicator(
                                            backgroundColor: Colors.transparent, // Transparent background
                                            valueColor: AlwaysStoppedAnimation(Colors.yellow), // Fill color
                                            value: 0.6, // Progress value (0.0 to 1.0)
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),

                                SizedBox(height: 15),
                                Row(
                                  children: [
                                          Column(
                                    children:[
                                      Text('You are experiencing severe anxiety.'),
                                      Row(
                                        children: [
                                          Text('Click '),
                                          GestureDetector(
                                            onTap: () {},
                                            child: Text(
                                              'here',
                                              style: TextStyle(
                                                color: Colors.green,
                                                decoration: TextDecoration.underline, // Add underline to make it look clickable
                                              ),
                                            ),
                                          ),
                                          Text(' to call for mental support.'),
                                        ],
                                      ),
                                    ],
                                ),
                                  ],
                                )
                              ],
                            ),
                          ),
                    ),
                    SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'More Tests',
                          style: TextStyle(
                            color: Colors.black,
                            decoration: TextDecoration.underline, // Add underline to make it look clickable
                          ),
                        ),
                        SizedBox(width: 5),
                        Icon(Icons.arrow_forward),
                      ],
                    ),
                    SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: 150,
                          height: 150,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/img_8.png'),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child:
                          Center(
                            child:
                            GestureDetector(
                              onTap: () {
                                // Add your navigation logic here
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => DepressionTest(),
                                  ),
                                );
                              },
                              child:
                              Text(
                                'Depression Test',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),

                          ),
                        ),

                        Container(
                          width: 150,
                          height: 150,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/img_9.png'),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child:
                          Center(
                            child:
                            Text(
                              'Anxiety Test',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: 150,
                          height: 150,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/img_10.png'),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child:
                          Center(
                            child:
                            Text(
                              'ADHD Test',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),

                        Container(
                          width: 150,
                          height: 150,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/img_11.png'),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child:
                          Center(
                            child:
                            Text(
                              'Bipolar Test',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
          ),

    );
  }
}