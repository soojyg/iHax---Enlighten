import 'package:flutter/material.dart';

class UploadButton extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
        title: Text('Upload',
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
      child:
        Column(
          children:[
            Padding(
              padding: EdgeInsets.all(16),
              child: Center(
                child: Column(
                  children:[
                Container(
                width: 400, // Adjust the width as needed
                height: 250, // Adjust the height as needed
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 186, 254, 193), // Background color of the box
                  borderRadius: BorderRadius.circular(10), // Rounded corners
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center, // Center vertically
                    children: [
                      Icon(
                        Icons.document_scanner, // Your icon
                        size: 60, // Adjust the icon size
                        color: Colors.green, // Icon color
                      ),
                      Text(
                        'Browse Documents', // Your text
                        style: TextStyle(
                          fontSize: 16, // Adjust the text size
                          color: Colors.green, // Text color
                        ),
                      ),
                    ],
                  ),
                ),
              ),
      ],
              ),
            ),
    ),
            Padding(
              padding: EdgeInsets.all(16),
              child:
                Column(
                  children:[
                  Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:[
                    RichText(
                      text: TextSpan(
                        text: 'Title',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: ' *', // Add a space before *
                            style: TextStyle(
                              fontSize: 12, // Adjust the font size of the subscript
                              color: Colors.red, // Set the color to red
                            ),
                          ),
                        ],
                      ),
                    ),
                ],
                ),
                    SizedBox(height: 5),
                    Container(
                      width: 400, // Adjust the width as needed
                      height: 40, // Adjust the height as needed
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 221, 247, 224),// Background color of the box
                        borderRadius: BorderRadius.circular(10), // Rounded corners
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('Give your learning materials a special name.',
                          style: TextStyle(
                            fontSize: 12,
                            color: Color.fromARGB(148, 34, 34, 34),
                          ),)
                        ],
                      ),
                    ),
                    SizedBox(height: 15),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:[
                      Text('Description',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
              ],
                    ),
                    SizedBox(height: 5),
                    Container(
                      width: 400, // Adjust the width as needed
                      height: 80, // Adjust the height as needed
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 221, 247, 224),// Background color of the box
                        borderRadius: BorderRadius.circular(10), // Rounded corners
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('Provide a short description.',
                            style: TextStyle(
                              fontSize: 12,
                              color: Color.fromARGB(148, 34, 34, 34),
                            ),)
                        ],
                      ),
                    ),
                    SizedBox(height: 15),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:[
                        RichText(
                          text: TextSpan(
                            text: 'Visibility',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                text: ' *', // Add a space before *
                                style: TextStyle(
                                  fontSize: 12, // Adjust the font size of the subscript
                                  color: Colors.red, // Set the color to red
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                    RadioButtonExample(),
                    SizedBox(height: 15),
                    Row(
                    children:[
                      Text('Add to Collections',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                      ),
                      SizedBox(width: 20),
                      Icon(Icons.arrow_drop_down_outlined),
                    ],
                    ),
                    SizedBox(height: 15),
                    Row(
                      children:[
                        Text('Labels Selection',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(width: 20),
                        Icon(Icons.arrow_drop_down_outlined),
                      ],
                    ),
                    SizedBox(height: 20),
                    Align(
                      alignment: Alignment.center,
                      child:
                      ElevatedButton(

                        onPressed: (){},
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(100,50),
                          backgroundColor: Color.fromARGB(255, 169, 177, 169),
                        ),
                        child: Text('Upload',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
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
        );

  }
}

class RadioButtonExample extends StatefulWidget {
  @override
  _RadioButtonExampleState createState() => _RadioButtonExampleState();
}

class _RadioButtonExampleState extends State<RadioButtonExample> {
  String selectedOption = "Private";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text('Private'),
          leading: Radio(
            value: "Private",
            groupValue: selectedOption,
            onChanged: (value) {
              setState(() {
                selectedOption = value as String;
              });
            },
          ),
        ),
        ListTile(
          title: Text('Public'),
          leading: Radio(
            value: "Public",
            groupValue: selectedOption,
            onChanged: (value) {
              setState(() {
                selectedOption = value as String;
              });
            },
          ),
        ),
      ],
    );
  }
}

