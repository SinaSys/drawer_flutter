import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Drawer")),
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
                accountName: Text("John Doe"),
                accountEmail: Text("JohnDoe@gmail.com"),
              currentAccountPicture:CircleAvatar(
               backgroundImage: NetworkImage('https://picsum.photos/200/300?grayscale'))),
            ListTile(title: Text("Inbox"), leading: Icon(FontAwesomeIcons.inbox),trailing: Chip(label: Text("11"))),
            ListTile(title: Text("Draft"), leading: Icon(FontAwesomeIcons.edit)),
            ListTile(title: Text("Archive"), leading: Icon(FontAwesomeIcons.archive)),
            ListTile(title: Text("Sent"), leading: Icon(FontAwesomeIcons.paperPlane)),
            ListTile(title: Text("Trash"), leading: Icon(FontAwesomeIcons.trash)),
            Divider(thickness: 1.0),
            Expanded(
              child: Align(
                alignment: FractionalOffset.bottomCenter,
                child:ListTile(title: Text("Setting"), leading: Icon(FontAwesomeIcons.cog))),
              ),
          ],
        ),
      ),
    );
  }
}
