import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<Album> fetchAlbum() async {
  final response =
      await http.get('https://jsonplaceholder.typicode.com/albums/1');

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return Album.fromJson(json.decode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}

class Album {
  final int userId;
  final int id;
  final String title;

  Album({this.userId, this.id, this.title});

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
    );
  }
}

//void main() => runApp(InternetObject());

class InternetObject extends StatefulWidget {
  InternetObject({Key key}) : super(key: key);

  @override
  _InternetObjectState createState() => _InternetObjectState();
}

class _InternetObjectState extends State<InternetObject> {
  Future<Album> futureAlbum;

  @override
  void initState() {
    super.initState();
    futureAlbum = fetchAlbum();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fetch Data Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Fetch Data Example'),
        ),
        body: Center(
          child: FutureBuilder<Album>(
            future: futureAlbum,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(25),
                    child: Column(children: <Widget>[
                  Text(
                    snapshot.data.title,
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold), 
                  ), Text(
                    snapshot.data.id.toString(),
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold)
                ), 
                Text(
                    snapshot.data.userId.toString(),
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold)),]));
              } else if (snapshot.hasError) {
                return Text("${snapshot.error}");
              }

              // By default, show a loading spinner.
              return CircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }
}
