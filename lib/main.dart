import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final List Movies = [
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
            title: Text("My Fav Movies"),
            backgroundColor: Colors.blueGrey.shade900),
        backgroundColor: Colors.blueGrey.shade400,
        body: ListView.builder(
            itemCount: Movies.length,
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
                  title: Text(Movies[index]),
                  subtitle: Text(""),
                  onTap: () => {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MovieListViewDetails()))
                  },
                ),
              );
            }),
      ),
    );
  }
}

class MovieListViewDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Movies"),
          backgroundColor: Colors.blueGrey.shade900,
        ),
        body: new Center(
          child: new Container(
            child: RaisedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Go Back"),
            ),
          ),
        ));
  }
}
