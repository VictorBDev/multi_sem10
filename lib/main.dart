import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Películas'),
        ),
        body: ListView(
          padding: EdgeInsets.all(16.0),
          children: [
            buildMovieCard(
              'assets/images/mind.png',
              'A Beautiful Mind',
              'Drama',
              Colors.blue[100]!,
            ),
            SizedBox(height: 16.0),
            buildMovieCard(
              'assets/images/buyers.png',
              'Dallas Buyers Club',
              'Biography, Drama',
              Colors.green[100]!,
            ),
            SizedBox(height: 16.0),
            buildMovieCard(
              'assets/images/redemption.png',
              'The Shawshank Redemption',
              'Drama',
              Colors.orange[100]!,
            ),
            SizedBox(height: 16.0),
            buildMovieCard(
              'assets/images/millaVerde.png',
              'La Milla Verde',
              'Drama, Fantasy',
              Colors.purple[100]!,
            ),
          ],
        ),
      ),
    );
  }

  Widget buildMovieCard(
      String imagePath, String title, String genre, Color backgroundColor) {
    return Card(
      color: backgroundColor,
      elevation: 4.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10.0),
              bottomLeft: Radius.circular(10.0),
            ),
            child: Image.asset(
              imagePath,
              width: 100,
              height: 150,
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    genre,
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
