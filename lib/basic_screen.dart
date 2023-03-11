import 'package:exercise_2/immutable_widget.dart';
import 'package:flutter/material.dart';

class BasicScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text('Welcome to Flutter'),
        actions: <Widget>[  
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Icon(Icons.edit),
          ),
        ],
      ),
      body: Center(
        child: AspectRatio(
          aspectRatio: 1.0,
          child: ImmutableWidget(),
        ),
      ),
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                child: Image.asset('pp.jpg'),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 77, 81, 81),
                  
                )
              ),
              ListTile(
                leading: Icon(Icons.account_circle),
                title: Text('Profile'),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
              ),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text('Sign Out'),
              ),
            ],
          ),
        ),
      );
  }
}