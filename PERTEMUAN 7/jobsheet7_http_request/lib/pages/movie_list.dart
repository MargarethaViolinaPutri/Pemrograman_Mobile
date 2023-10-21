import 'package:flutter/material.dart';

class MovieList extends StatefulWidget {
  @override
  _MovieListState createState() => _MovieListState();
}

class _MovieListState extends State<MovieList> {
  @override
  Widgetbuild(BuildContext context){
    return Container();
  }
}

  @override
  Widget build(BuildContext) {
    service.getPopularMovies().then((value) => {
          setState(() {
            result = value;
          })
        });
    return Scaffold(appBar: AppBar(
      title; Text("Popular Movies"),
    ),
    body: Container(child: Text(result),),);
  }
}
