import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => CheckList(),
        '/AddCrop': (context) => AddCrop(),
        '/Discover': (context) => Discover(),
        '/Weather': (context) => Weather(),
        '/Market': (context) => Market(),
        '/About': (context) => About(),
      },
    );
  }
}

/*class CheckList extends StatefulWidget {
  CheckList({Key key, this.title}) : super(key: key);
  final String title;

  @override
  CheckListState createState() => CheckListState();
}

class CheckListState extends State<CheckList> {
  void _incrementCounter() {
    setState(() {});
  }*/

class CheckList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text(''),
              decoration: BoxDecoration(
                color: Colors.green,
              ),
            ),
            ListTile(
              title: Text('Add crop'),
              leading: Icon(Icons.spa),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/AddCrop');
              },
            ),
            ListTile(
                title: Text('Discover'),
                leading: Icon(Icons.search),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/Discover');
                }),
            ListTile(
                title: Text('Weather'),
                leading: Icon(Icons.wb_sunny),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/Weather');
                }),
            ListTile(
                title: Text('Market'),
                leading: Icon(Icons.local_grocery_store),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/Market');
                }),
            ListTile(
                title: Text('About'),
                leading: Icon(Icons.face),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/About');
                }),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Pomodoro'),
      ),
      body: Center(
        child: Container(
          child: Column(
            children: [
              new Padding(padding: EdgeInsets.only(top: 250, left: 12, right: 12),
              ),
              new Text(
                'Starting off? Add crops to your patch.',
                style: new TextStyle(fontSize: 12.0),
              ),
              new Padding(padding: EdgeInsets.only(top: 20),
              ),
              new FloatingActionButton(
                backgroundColor: Colors.green,
                child: Icon(Icons.spa),
                onPressed: () {},
              )
            ] ,
          ), // This trailing comma makes auto-formatting nicer for build methods.
        )
      )
    );
  }
}

class AddCrop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Crop'),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go Back'),
        ),
      ),
    );
  }
}

class Discover extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Discover'),
        ),
        body: Center(
            child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go back'),
        )));
  }
}

class Weather extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Weather'),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go Back'),
        ),
      ),
    );
  }
}

class Market extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Market'),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go Back'),
        ),
      ),
    );
  }
}

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About'),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go Back'),
        ),
      ),
    );
  }
}
