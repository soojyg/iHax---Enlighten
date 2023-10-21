import 'package:flutter/material.dart';
import 'depression_test_result.dart';

class DepressionTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Depression Test',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.green, // Change the color of the back arrow ('<-')
        ),
      ),
      body: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                  'Over the last 2 weeks, how often have you been bothered by any of the following problems?'
                  '\n\nPlease note, all fields are required.'),
              SizedBox(height: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('1.  Little interest or pleasure in doing things.'),
                  SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RatingButtons(),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('2. Feeling down, depressed, or hopeless.'),
                  SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RatingButtons(),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                      '3. Trouble falling or staying asleep, or sleeping too much.'),
                  SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RatingButtons(),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('4. Feeling tired or having little energy.'),
                  SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RatingButtons(),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('5. Poor appetite or overeating.'),
                  SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RatingButtons(),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                      '6. Feeling bad about yourself - or that you are a failure or have let yourself or your family down.'),
                  SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RatingButtons(),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                      '7. Trouble concentrating on things, such as reading the newspaper or watching television.'),
                  SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RatingButtons(),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 3),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DepressionTestResult()));
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      fixedSize: Size(140, 40),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Submit',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.green,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          )),
    );
  }
}

class RatingButtons extends StatefulWidget {
  @override
  _RatingButtonsState createState() => _RatingButtonsState();
}

class _RatingButtonsState extends State<RatingButtons> {
  int selectedButtonIndex = -1; // Initially, no button is selected

  void selectButton(int index) {
    setState(() {
      selectedButtonIndex = index;
    });
  }

  Widget buildRatingButton(int index) {
    final bool isSelected = selectedButtonIndex == index;

    return ElevatedButton(
      onPressed: () {
        if (!isSelected) {
          selectButton(index);
        }
      },
      style: ElevatedButton.styleFrom(
        primary: isSelected ? Color.fromARGB(255, 221, 247, 224) : Colors.white,
      ),
      child: Text(
        '${index + 1}',
        style: TextStyle(
          color: Colors.black,
        ),
      ),
    );
  }

  List<Widget> buildRatingButtons() {
    final List<Widget> buttons = [];

    for (int i = 0; i < 5; i++) {
      buttons.add(buildRatingButton(i));
    }

    return buttons;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: buildRatingButtons(),
    );
  }
}
