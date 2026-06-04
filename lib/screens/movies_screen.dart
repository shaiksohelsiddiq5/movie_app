import 'package:flutter/material.dart';
import '../data/movie_data.dart';

class MoviesScreen extends StatelessWidget {
  const MoviesScreen({super.key});

  final List<Map<String, dynamic>> movies = const [
    {
      "title": "Avatar",
      "rating": "8.2",
      "genre": "Action",
      "icon": Icons.movie,
    },
    {
      "title": "Interstellar",
      "rating": "9.0",
      "genre": "Sci-Fi",
      "icon": Icons.movie_creation,
    },
    {
      "title": "Joker",
      "rating": "8.7",
      "genre": "Drama",
      "icon": Icons.theaters,
    },
    {
      "title": "Batman",
      "rating": "8.5",
      "genre": "Action",
      "icon": Icons.local_movies,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Movie Hub Pro"),
        centerTitle: true,
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(15),
        itemCount: movies.length,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
        ),
        itemBuilder: (context, index) {
          return Card(
            elevation: 8,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  movies[index]["icon"],
                  size: 50,
                  color: Colors.deepPurple,
                ),
                const SizedBox(height: 10),
                Text(
                  movies[index]["title"],
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text("⭐ ${movies[index]["rating"]}"),
                Text(movies[index]["genre"]),
              ],
            ),
          );
        },
      ),
    );
  }
}