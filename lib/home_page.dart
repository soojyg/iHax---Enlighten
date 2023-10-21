import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text(
            'Enlighten',
            style: TextStyle(
              fontSize: 30,
              color: Colors.black,
              fontFamily: 'fantasy',
            ),
          ),
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
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
                      'Community',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      CommunityCircle(
                          communityName: 'Bahasa Melayu',
                          imagePath: 'assets/bm.png'),
                      CommunityCircle(
                          communityName: 'Bahasa Cina',
                          imagePath: 'assets/bc.png'),
                      CommunityCircle(
                          communityName: 'Mathematics',
                          imagePath: 'assets/mm.png'),
                      CommunityCircle(
                          communityName: 'Sejarah',
                          imagePath: 'assets/sej.png'),
                    ],
                  ),
                ),
              ),
              Container(
                width: 350,
                height: 650,
                color: Colors.white,
                child: Column(
                  children: [
                    PostWidget(
                      username: 'So Jie',
                      caption: 'How I manage to get Microsoft Power Bi. '
                          'I am so glad to share that i got this certificate after three months of effort...',
                      imageUrl: 'assets/img.png',
                      likes: 455,
                      comments: 45,
                      shares: 12,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
}

class CommunityCircle extends StatelessWidget {
  final String communityName;
  final String imagePath;

  CommunityCircle({
    required this.communityName,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110,
      height: 110,
      margin: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage(imagePath), // Replace with your image path
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
        child: Text(
          communityName,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 14,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

class PostWidget extends StatelessWidget {
  final String username;
  final String caption;
  final String imageUrl;
  final int likes;
  final int comments;
  final int shares;

  PostWidget({
    required this.username,
    required this.caption,
    required this.imageUrl,
    required this.likes,
    required this.comments,
    required this.shares,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Profile photo and Username
          Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('assets/img_1.png'),
                radius: 20,
              ),
              SizedBox(width: 8.0),
              Text(
                username,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(height: 8.0), // Add vertical spacing here

          // Post image
          Image.asset(imageUrl),
          SizedBox(height: 8.0),

          // Caption
          Text(caption),
          SizedBox(height: 8.0),

          // Likes, comments, and shares
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.favorite),
                  Text(likes.toString()),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.comment),
                  Text(comments.toString()),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.share),
                  Text(shares.toString()),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
