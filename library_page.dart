import 'package:flutter/material.dart';
import 'addmaths_notes.dart';
import 'my_upload_notes.dart';
import 'upload_button.dart';

class LibraryScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
        title: const Text(
          'Library',
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
          ),
        ),
        elevation: 0,

        // Add the search icon as an action
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(40),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween, // Adjust horizontal position

            children: [
              IconButton(
                  onPressed: (){
                    showSearch(
                        context: context,
                        delegate: CustomSearchDelegate(),
                    );
                  },
                  icon: const Icon(Icons.search),
              ),
            ],
          ),
        ),
      ),


      body: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
            ),

            BoxWidget(
              subject: 'Recently Added',
              description: 'Add Math Form 4_notes.pdf, English Communication Learning video...',
              iconData: Icons.history,
              onPressed:(){
                //Add navigation logic for Box 1
                // Navigator.push(context, MaterialPageRoute(builder: (context) => Page1()));
              },
            ),
            SizedBox(height: 15),
            BoxWidget(
              subject: 'Additional Mathematics',
              description: 'Add Math Form 4_notes.pdf, Add Math Form 5_notes, Differentiation Tutorial...',
              iconData: Icons.folder_copy_outlined,
              onPressed: (){
                //Add navigation logic for Box 2
                Navigator.push(context,MaterialPageRoute(builder: (context) => AddMathNotes()));
              },
            ),
            SizedBox(height: 15),
            BoxWidget(
              subject: 'English',
              description: 'Form 4 Vocab list, Grammar, 100 SPM Essays Essentials... ',
              iconData: Icons.folder_copy_outlined,
              onPressed: (){
                //Add navigation logic for Box 2
                // Navigator.push(context,MaterialPageRoute(builder: (context) => Page2()));
              },
            ),
            SizedBox(height: 15),
            BoxWidget(
              subject: 'Bahasa Melayu',
              description: 'Koleksi Kertas Percubaan SPM, 100 Peribahasa, My_notes.pdf...',
              iconData: Icons.folder_copy_outlined,
              onPressed: (){
                //Add navigation logic for Box 2
                // Navigator.push(context,MaterialPageRoute(builder: (context) => Page2()));
              },
            ),
            SizedBox(height: 15),
            BoxWidget(
              subject: 'Sejarah',
              description: 'Koleksi Kertas Percubaan SPM, Form 4 Chapter 10 notes, My_notes.pdf...',
              iconData: Icons.folder_copy_outlined,
              onPressed: (){
                //Add navigation logic for Box 2
                // Navigator.push(context,MaterialPageRoute(builder: (context) => Page2()));
              },
            ),
            SizedBox(height: 15),
            BoxWidget(
              subject: 'My Upload',
              description: 'Soalan Percubaan CHS, My_notes.pdf',
              iconData: Icons.folder_copy_outlined,
              onPressed: (){
                //Add navigation logic for Box 2
                Navigator.push(context,MaterialPageRoute(builder: (context) => MyUpload()));
              },
            ),
            SizedBox(height: 15), // Add spacing between the content and the buttons
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20), // Adjust horizontal padding as needed
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween, // Align buttons at the bottom
                children: [
                  // Button 1 (bottom left)
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,MaterialPageRoute(builder: (context) => UploadButton()));
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      fixedSize: Size(140, 40), // Adjust the button size as needed
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.upload,
                          size: 25,
                          color: Colors.green,
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Upload',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.green,
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Button 2 (bottom right)
                  ElevatedButton(
                    onPressed: () {

                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      fixedSize: Size(140, 40), // Adjust the button size as needed
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.add,
                          size: 25,
                          color: Colors.green,
                        ),
                        SizedBox(width: 10),
                        Text(
                          'New Folder',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.green,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
              ],
            ),
      );
  }

  class BoxWidget extends StatelessWidget{
    final String subject;
    final String description;
    final IconData iconData;
    final VoidCallback onPressed;

    BoxWidget({
      required this.subject,
      required this.description,
      required this.iconData,
      required this.onPressed,
  });
    @override
    Widget build(BuildContext context) {
      return GestureDetector(
        onTap: onPressed,
        child: Container(
          width: 366,
          height: 90,
          decoration: BoxDecoration(
            border: Border.all(color: const Color(0xFF147723)),
            borderRadius: BorderRadius.circular(10),
          ),
          padding: EdgeInsets.all(16),
          child: Row(
            children: [
              Icon(
                iconData,
                size: 40,
                color: Colors.black,
              ),
              SizedBox(width: 10), //Add spacing between icon and subject (horizontally)
              Expanded(
                child: Column( //Use a column for vertical alignment
                  crossAxisAlignment: CrossAxisAlignment.start,
                  //Align text to the left
                  children: [
                    Text(
                      subject,
                      style: TextStyle(
                        fontSize: 18, // Change the font size here
                        fontWeight: FontWeight.bold, // Make the text bold
                      ),
                    ),
                    SizedBox(height: 2),
                    //Add spacing between subject and description (vertically)
                    Text(
                      description,
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: ElevatedButton(
                  onPressed: onPressed,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green, //Set background color to green
                  ),
                  child: Text('View',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),

      );
    }
  }

  class CustomSearchDelegate extends SearchDelegate{
    List<String> searchTerms=[
      'Mathematics',
      'Bahasa Melayu',
      'Bahasa Cina',
      'Science',
      'Chemistry',
      'Physics',
      'Accounting',
      'English'
    ];

  @override
  List<Widget>? buildActions(BuildContext context) {
    return[
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: (){
          query = '';
        },
      ),
    ];
    throw UnimplementedError();
  }

  // To make sure we can leave and close the search bar
  @override
  Widget? buildLeading(BuildContext context) {
      return IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: (){
          close(context, null);
        },
      );
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for(var subject in searchTerms){
      if(subject.toLowerCase().contains(query.toLowerCase())){
        matchQuery.add(subject);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context,index){
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
        },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for(var subject in searchTerms){
      if(subject.toLowerCase().contains(query.toLowerCase())){
        matchQuery.add(subject);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context,index){
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }
  
  }

