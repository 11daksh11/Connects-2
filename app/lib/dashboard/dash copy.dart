import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';
import '../charts.dart';
//import 'charts.dart';
import 'package:statusbar/statusbar.dart';

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

  Widget build(BuildContext context) {
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 12,
                ),
                //Weekly Progress Tab
                new Text(
                  "Weekly Progress",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                    fontSize: 14,
                    color: Colors.blue[600],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Center(child: chart()),
                SizedBox(
                  height: 12,
                ),
                new Text(
                  //Courses Enrolled
                  "Courses Enrolled",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                    fontSize: 14,
                    color: Colors.blue[600],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 100,
                  //List Veiw of courses Enrolled with horizontal scrolling
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        width: 18,
                      ),
                      new Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(9),
                          color: Colors.lightBlue[200],
                        ),
                        width: 100,
                        //height: 74,
                        child: Center(
                          child: Text(
                            "Java Introduction",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 18,
                      ),
                      new Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(9),
                          color: Colors.lightBlue[200],
                        ),
                        width: 100,
                        //height: 74,
                        child: Center(
                          child: Text(
                            "Java Introduction",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 18,
                      ),
                      new Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(9),
                          color: Colors.lightBlue[200],
                        ),
                        width: 100,
                        //height: 74,
                        child: Center(
                          child: Text(
                            "Java Introduction",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 18,
                      ),
                      new Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(9),
                          color: Colors.lightBlue[200],
                        ),
                        width: 100,
                        //height: 74,
                        child: Center(
                          child: Text(
                            "Java Introduction",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 18,
                      ),
                      new Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(9),
                          color: Colors.lightBlue[200],
                        ),
                        width: 100,
                        //height: 74,
                        child: Center(
                          child: Text(
                            "Java Introduction",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    //Explore New Courses heading tab
                    new Text(
                      "Explore More Courses",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                        fontSize: 14,
                        color: Colors.blue[600],
                      ),
                    ),
                    SizedBox(
                      width: 75,
                    ),
                    new FlatButton(
                      onPressed: null,
                      child: Icon(Icons.filter),
                    ),
                    new FlatButton(
                      onPressed: null,
                      child: Icon(Icons.sort),
                    ),
                  ],
                ),
                Container(
                  //Enrolll new course List veiw vertically
                  height: 290,
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          new Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(13),
                                  image: DecorationImage(
                                      image: AssetImage("assets/lu.png"))),
                              width: 164,
                              height: 164,
                              child: Center(
                                child: Text(
                                  "Artificial Intelligence",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          new Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(13),
                                  image: DecorationImage(
                                      image: AssetImage("assets/ru.png"))),
                              width: 164,
                              height: 164,
                              child: Center(
                                child: Text(
                                  "Big Data",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          new Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(13),
                                  image: DecorationImage(
                                      image: AssetImage("assets/lb.png"))),
                              width: 164,
                              height: 164,
                              child: Center(
                                child: Text(
                                  "",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          new Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(13),
                                  image: DecorationImage(
                                      image: AssetImage("assets/rb.png"))),
                              width: 164,
                              height: 164,
                              child: Center(
                                child: Text(
                                  "Machine Learning",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
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
