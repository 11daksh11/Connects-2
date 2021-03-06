import 'dart:developer';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../charts.dart';
//import 'charts.dart';
import 'package:statusbar/statusbar.dart';

List<String> getListElements() {
  var x = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12];
  var y = [
    "Introduction to java",
    "FLutter Basica",
    "Artificial Inteligence",
    "Machine Leanring",
  ];
  var ww = List<String>.generate(30, (counter) => "$counter");

  return ww;
}

int lis = 0;

Widget getListView() {
  var listItems = getListElements();
  var listview = ListView.builder(itemBuilder: (context, index) {
    return Container(
      margin: EdgeInsets.all(3),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.blue,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: InkWell(
        onTap: () {
          print("Hello Mister");
        },
        child: ListTile(
          dense: true,
          leading: Text(listItems[index]),
          title: Text("Intoduction to Java"),
          trailing: Icon(Icons.alarm_outlined),
        ),
      ),
    );
  });
  return listview;
}

//import 'package:flutter_statusbar_text_color/flutter_statusbar_text_color.dart';

class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  void initState() {
    super.initState();
    //FlutterStatusbarTextColor.setTextColor(FlutterStatusbarTextColor.dark)
    StatusBar.color(Colors.blue);
  }

  int _current = 0;
  List imgList = [
    'https://images.unsplash.com/photo-1502117859338-fd9daa518a9a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
    'https://images.unsplash.com/photo-1554321586-92083ba0a115?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
    'https://images.unsplash.com/photo-1536679545597-c2e5e1946495?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
    'https://images.unsplash.com/photo-1543922596-b3bbaba80649?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
    'https://images.unsplash.com/photo-1502943693086-33b5b1cfdf2f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80'
  ];

  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
            resizeToAvoidBottomPadding: false,
            resizeToAvoidBottomInset: false,
            appBar: AppBar(
              backgroundColor: Colors.white70,
              title: TextField(
                autocorrect: true,
                decoration: InputDecoration(
                  isDense: true, // Added this
                  contentPadding: EdgeInsets.all(8),
                  hintText: 'Search courses',
                  prefixIcon: Icon(Icons.search),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(color: Colors.blue, width: 1.5),
                  ),
                ),
              ),
              actions: <Widget>[
                IconButton(
                  icon: const Icon(
                    Icons.add_alert_outlined,
                    color: Colors.blue,
                  ),
                  onPressed: () {
                    print("object");
                  },
                ),
              ],
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 12,
                ),
                //Weekly Progress Tab
                Center(
                  child: new Text(
                    "Weekly Progress",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                      fontSize: 20,
                      color: Colors.blue[600],
                    ),
                  ),
                ),
                Center(child: chart()),
                SizedBox(
                  height: 5,
                ),
                Center(
                  child: new Text(
                    "Schedule",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                      fontSize: 20,
                      color: Colors.blue[600],
                    ),
                  ),
                ),
                Container(
                    height: 150,
                    child: InkWell(
                      onTap: () {
                        print("Move to New Place");
                      },
                      child: getListView(),
                    )),
                SizedBox(
                  height: 5,
                ),
                Center(
                  child: new Text(
                    //Courses Enrolled
                    "Courses Enrolled",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                      fontSize: 20,
                      color: Colors.blue[600],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                CarouselSlider(
                  height: 200,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  enlargeCenterPage: true,
                  reverse: false,
                  onPageChanged: (index) {
                    setState(() {
                      _current = index;
                    });
                  },
                  items: imgList.map((imgURl) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                          width: MediaQuery.of(context).size.width,
                          //margin: EdgeInsets.symmetric(horizontal: 1.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(14)),
                            color: Colors.white,
                          ),
                          child: InkWell(
                            onTap: () {
                              print("object");
                            },
                            child: Image.network(
                              imgURl,
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      },
                    );
                  }).toList(),
                ),
                SizedBox(
                  height: 12,
                ),
              ],
            ),
            backgroundColor: Colors.white,
            bottomNavigationBar: BottomNavigationBar(
              showSelectedLabels: false,
              showUnselectedLabels: false,
              backgroundColor: Colors.white70,
              selectedItemColor: Colors.blue,
              unselectedItemColor: Colors.grey[300],
              items: [
                BottomNavigationBarItem(
                    icon: Icon(Icons.dashboard), title: Text("Dashboard")
                    //backgroundColor: Colors.black
                    ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.subscriptions),
                    title: Text("subscriptions")),
                BottomNavigationBarItem(
                    icon: Icon(Icons.menu_book_outlined), title: Text("menu")),
                BottomNavigationBarItem(
                    icon: Icon(Icons.account_circle), title: Text("acc")),
              ],
            )),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
