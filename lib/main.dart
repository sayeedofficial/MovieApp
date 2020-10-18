import 'package:flutter/material.dart';
import './model/movie.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final List<Movie> movieList= Movie.getMovies();
  final List movies = [
    "Titanic",
    "Blade Runner",
    "Rambo",
    "The Avengers",
    "Avatar",
    "The Legend",
    "300",
    "The Wolf of Wall Street",
    "Interstellar",
    "Game of Thrones",
    "Vikings"
  ];
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            title: Text(
              "My Fav Movies",
            ),
            actions: [
              Padding(
                padding: EdgeInsets.only(right: 110),
                child: Icon(Icons.movie),
              )
            ],
            centerTitle: true,
            backgroundColor: Colors.blueGrey.shade900),
        backgroundColor: Colors.blueGrey.shade400,
        body: ListView.builder(
            itemCount: movies.length,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                elevation: 4.5,
                color: Colors.white,
                child: ListTile(
                  leading: CircleAvatar(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14)),
                      child: Text("H"),
                    ),
                  ),
                  trailing: Text("..."),
                  title: Text(movies[index]),
                  subtitle: Text(""),
                  onTap: () => {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MovieListViewDetails(
                                  movieName: "${movies.elementAt(index)}",
                                )))
                  },
                ),
              );
            }),
      ),
    );
  }
}

class MovieListViewDetails extends StatelessWidget {
  final String movieName;
  const MovieListViewDetails({Key key, this.movieName}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("${this.movieName}"),
          backgroundColor: Colors.blueGrey.shade900,
        ),
        body: new Center(
          child: new Container(
            child: RaisedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("GoBack ${this.movieName}"),
            ),
          ),
        ));
  }
}
