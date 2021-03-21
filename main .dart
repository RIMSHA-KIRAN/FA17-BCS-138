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
                  title: Text('Janurary                      Febraruy                              March                    April',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,

                    ),
                 ),
    ),
                
       ],
            ),),
                    ],
                  ),
                )),
                Container(
                  height: 70,
                  width: 520,
                  color: Colors.blue[100],
                  child: new Stack(
                    children: <Widget>[
                      ListTile(
                        title: Text(
                           ' Completed             Snoozed               Overdue ',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                            ),
                            textAlign: TextAlign.center),
                        subtitle: Text(
                          '                     64                                     32                                      12',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 20.0,
                  width: 450,
                  color: Colors.black,
                  child: new Stack(
                    children: <Widget>[
                      ListTile(
                        title: Text('',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center),
                        subtitle: Text(
                          '',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                height: 20.0,
                  width: 450,
                  padding: EdgeInsets.only(left: 220, right: 0),
                  color: Colors.yellow,
                  child: Container(
                   height: 20.0,
                  width: 450,
                    color: Colors.white,
                    child: Text(''),
                  ),
                ),
                Container(
                  height: 20.0,
                  width: 450,
                  padding: EdgeInsets.only(left: 120, right: 0),
                  color: Colors.blue,
                  child: Container(
                     height: 20.0,
                  width: 450,
                    color: Colors.white,
                    child: Text(''),
                  ),
                ),
                SizedBox(
                  child: new Center(
                    child: new Container(
                      margin:
                          new EdgeInsetsDirectional.only(start: 1.0, end: 1.0),
                    ),
                  ),
                ),
                Card(
                  margin: EdgeInsets.symmetric(vertical: 8, horizontal: 25),
                  child: Padding(
                      padding: EdgeInsets.all(0),
                      child: ListTile(
                        title: Text(
                          'SHOWALL',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: "calibery",
                            fontSize: 15,
                            
                          ),
                        ),
                      )),
                ),
                Card(
                  margin: EdgeInsets.symmetric(vertical: 8, horizontal: 25),
                  child: Padding(
                      padding: EdgeInsets.all(0),
                      child: ListTile(
                        leading: Icon(
                          Icons.lens_rounded,
                          color: Colors.black,
                          size: 15.0,
                        ),
                        title: Text(
                          'Doing meeting with manager                                                                                                      ',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: "calibery",
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Text(
                          '       08 -10am          Starbucks',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      )),
                ),
                Card(
                  margin: EdgeInsets.symmetric(vertical: 8, horizontal: 25),
                  child: Padding(
                      padding: EdgeInsets.all(0),
                      child: ListTile(
                        leading: Icon(
                          Icons.lens_rounded,
                          color: Colors.yellow,
                          size: 15.0,
                        ),
                        title: Text(
                          'Catch up with Miss sana                                                                                                      ',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: "calibery",
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Text(
                          '      11am -12am       Mobile Project ',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      )),
                ),
                Card(
                  margin: EdgeInsets.symmetric(vertical: 8, horizontal: 25),
                  child: Padding(
                      padding: EdgeInsets.all(0),
                      child: ListTile(
                        leading: Icon(
                          Icons.lens_rounded,
                          color: Colors.blue,
                          size: 15.0,
                        ),
                        title: Text(
                          'Lunch with Noor',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: "calibery",
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Text(
                          '         01pm -2pm      Restaurant',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      )),
                ),
              ],
            ))));
  }
}