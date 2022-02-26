import 'package:flutter/material.dart';
import 'package:movies_example/models/movie.dart';
import 'package:movies_example/views/home/widgets/rating.dart';

class MovieList extends StatelessWidget {
  final List<Movie> movies;
  const MovieList({Key? key, required this.movies}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: movies.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(right: 10),
              child: SizedBox(
                height: 170,
                width: 110,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 130,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: NetworkImage(
                                movies[index].posterPath != null
                                    ? 'http://image.tmdb.org/t/p/w185/${movies[index].posterPath}'
                                    : 'https://images-na.ssl-images-amazon.com/images/I/31yW7R1ccdL._AC_SY400_.jpg',
                              ),
                              fit: BoxFit.cover)),
                    ),
                    Text(
                      '${movies[index].title}',
                      textAlign: TextAlign.start,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                      maxLines: 1,
                    ),
                    Rating(
                      rating: movies[index].voteAverage! / 2,
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
