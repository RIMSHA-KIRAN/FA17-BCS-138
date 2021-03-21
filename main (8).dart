import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: new Text(
                'Overview',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              elevation: 0.0,
              backgroundColor: Colors.blue[100],
              leading: GestureDetector(
                onTap: () {},
                child: Icon(
                  Icons.menu,
                  color: Colors.black,
                ),
              ),
              actions: <Widget>[
                new IconButton(
                  icon: new Icon(Icons.more_horiz),
                  color: Colors.black,
                  onPressed: () => Navigator.of(context).pop(null),
                ),
                new IconButton(
                  icon: new Icon(Icons.add),
                  color: Colors.black,
                  onPressed: () => Navigator.of(context).pop(null),
                ),
              ],
            ),
            body: SafeArea(
                child: Column(
              children: <Widget>[
                Container(
                    child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    //align buttoms to the right
                    children: <Widget>[
                      Container(
                        height: 70.0,
                        width: 520,
                        color: Colors.white,
                        child: new Stack(
                          children: <Widget>[
                            ListTile(
                              title: Text(
                                'Janurary                      Febraruy                              March                    April',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )),
              ],
            ))));
  }
}
