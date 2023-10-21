import 'package:flutter/material.dart';

class FindTutor extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text(
            'Find Tutor',
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
            ),
          ),
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(
            color:
                Colors.green, // Change the color of the back arrow ('<-') here
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              //Search bar
              Padding(
                padding: EdgeInsets.all(16),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search',
                    prefixIcon: Icon(Icons.search),
                  ),
                  onChanged: (query) {},
                ),
              ),

              Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Text(
                      'Your Tutor',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      // Add your community circles here
                      RectTutor(
                        tutorName: 'Victoria Lee',
                        imagePath: 'assets/img_12.png',
                        language: 'English, Mandarin',
                        subject: 'English',
                      ),
                      SizedBox(width: 25),
                      RectTutor(
                        tutorName: 'Karry Wang',
                        imagePath: 'assets/img_13.png',
                        language: 'Mandarin',
                        subject: 'Mathematics',
                      ),
                      SizedBox(width: 25),
                      RectTutor(
                        tutorName: 'Anaisha',
                        imagePath: 'assets/img_14.png',
                        language: 'English',
                        subject: 'Physics',
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Text(
                      'Suggestions',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(width: 15),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(Icons.refresh, size: 25, color: Colors.black),
                          Text(
                            'Refresh',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 350,
                height: 550,
                // color: Colors.white,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RectTutor(
                          tutorName: 'Bahvin',
                          imagePath: 'assets/img_15.png',
                          language: 'English',
                          subject: 'Chemistry',
                        ),
                        RectTutor(
                          tutorName: 'Haryati',
                          imagePath: 'assets/img_16.png',
                          language: 'Malay',
                          subject: 'Bahasa Melayu',
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RectTutor(
                          tutorName: 'Zi Rui Tay',
                          imagePath: 'assets/img_17.png',
                          language: 'English, Mandarin',
                          subject: 'Accounting',
                        ),
                        RectTutor(
                          tutorName: 'Neysa',
                          imagePath: 'assets/img_18.png',
                          language: 'English, Mandarin',
                          subject: 'AddMaths',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
}

class RectTutor extends StatelessWidget {
  final String tutorName;
  final String imagePath;
  final String language;
  final String subject;

  RectTutor({
    required this.tutorName,
    required this.imagePath,
    required this.language,
    required this.subject,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 164,
      height: 210,
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xFF147723)),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Image.asset(
              (imagePath),
              width: 80,
              height: 80,
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  tutorName,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(height: 3),
            Row(
              children: [
                Icon(Icons.language),
                SizedBox(width: 3),
                Text(language),
              ],
            ),
            SizedBox(height: 3),
            Row(
              children: [
                Icon(Icons.library_books_outlined),
                SizedBox(width: 3),
                Text(subject),
              ],
            ),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'View profile',
                  style: TextStyle(
                    fontSize: 12,
                    color: Color.fromARGB(255, 101, 96, 96),
                    decoration: TextDecoration.underline,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
