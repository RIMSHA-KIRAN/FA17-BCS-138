

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FA17-BCS-138',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  GlobalKey<ScaffoldState> _key = GlobalKey();

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  Widget _icon(IconData icon, {Color color = Colors.blue}) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(13)),
        color: Theme.of(context).backgroundColor,
        //boxShadow: AppTheme.shadow
      ),
      child: InkWell(
        onTap: () {
          _key.currentState.openDrawer();
        },
        child: Icon(
          icon,
          color: color,
        ),
      ),
    );
  }

  bool isHomePageSelected = true;
  Widget _appBar() {
    return Container(
      //padding: AppTheme.padding,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          RotatedBox(
            quarterTurns: 4,
            child: _icon(Icons.menu, color: Colors.black54),
          ),
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(13)),
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).backgroundColor,
                boxShadow: <BoxShadow>[
                  BoxShadow(
                      color: Color(0xfff8f8f8),
                      blurRadius: 10,
                      spreadRadius: 10),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      appBar: AppBar(leading: _appBar()),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.


        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[


            DrawerHeader(

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,


                children: <Widget>[



                  Text(
                    'Add New',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,

                  ),


                  ),


                  SizedBox(
                    width:200.0,
                    height:25.0,

                  ),


                  Text(
                    'Title',style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 30.0,color: Colors.white
                  ),
                  ),
                  SizedBox(
                    width:400.0,
                    height:20.0,

                  ),
                  Text(
                    'Description',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,),

                  ),
                ],
              ),

              decoration: BoxDecoration(
                color: Colors.purpleAccent,
              ),

            ),

            ListTile(
              title: Text('Select date                             march 18,2015'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },

            ),
            Divider(
              color: Colors.white,
              thickness:2.0,
            ),

            ListTile(
              title: Text('Select time                        9:00am - 10:00am'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            Divider(
              color: Colors.white,
              thickness:2.0,
            ),

            ListTile(
              title: Text('All Day'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);

              },
              leading: FloatingActionButton(
                child:Icon(Icons.toggle_on),
              ),
            ),

            Divider(
              color: Colors.white,
              thickness:2.0,
            ),



            ListTile(
              title: Text('Location                                               None'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },

            ),
            Divider(
              color: Colors.white,
              thickness:2.0,
            ),
            ListTile(
              title: Text('Notification                                       Via SMS'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            Divider(
              color: Colors.white,
              thickness:2.0,
            ),
            ListTile(
              title: Text('People                                                  None'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            Divider(
              color: Colors.white,
              thickness:2.0,
            ),
            ListTile(
              title: Text('Repeat                                                      No'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),

          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}