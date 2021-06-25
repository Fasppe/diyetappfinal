import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(Stats());
}

class Stats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Diyetisyenler(),
    );
  }
}

class Diyetisyenler extends StatefulWidget {
  @override
  _DiyetisyenlerState createState() => _DiyetisyenlerState();
}

class _DiyetisyenlerState extends State<Diyetisyenler> {
  KullaniciGetir() async {
    var response =
        await http.get(Uri.https("jsonplaceholder.typicode.com", "users"));
    var jsonData = jsonDecode(response.body);
    List<User> users = [];

    for (var u in jsonData) {
      User user = User(u["name"], u["email"], u["username"]);
      users.add(user);
    }
    print(users.length);
    return users;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            actions: [
              IconButton(
                icon: Icon(Icons.backspace),
                onPressed: () {
                  Navigator.pop(context);
                },
              )
            ],
            title: Text("Profile Menü"),
            backgroundColor: Colors.black12,
          ),
          body: Container(
            child: Card(
              child: FutureBuilder(
                future: KullaniciGetir(),
                builder: (context, snapshot) {
                  if (snapshot.data == null) {
                    return Container(
                      child: Center(
                        child: Text("Yukleniyor..."),
                      ),
                    );
                  } else
                    return ListView.builder(
                        itemCount: snapshot.data.length,
                        itemBuilder: (context, i) {
                          return ListTile(
                            title: Text(snapshot.data[i].name),
                            subtitle: Text(snapshot.data[i].userName),
                            trailing: Text(snapshot.data[i].email),
                          );
                        });
                },
              ),
            ),
          )),
    );
  }
}

class User {
  final String name, email, userName;

  User(this.name, this.email, this.userName);
}
