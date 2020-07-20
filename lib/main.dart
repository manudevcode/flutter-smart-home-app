import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:smart_home_app/pages/page.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}


class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      length: 4,
      child:  Scaffold(
        backgroundColor: Color(0xffF5F5F8),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child:  Container(
            padding: EdgeInsets.only(top: 16),
            color: Colors.transparent,
            child: SafeArea(
              child: Row(
                children: <Widget>[
                  IconButton(icon: Icon(Icons.short_text, color: Colors.black,), onPressed: () {}),
                  Expanded(
                    child: TabBar(
                      isScrollable: true,
                      labelPadding: EdgeInsets.only(left: 0, right: 0),
                      indicator: UnderlineTabIndicator(
                        borderSide: BorderSide(width: 2.0),
                        insets: EdgeInsets.only(
                          left: 0,
                          right: 8,
                          bottom: 4
                        ),
                      ),
                      tabs: [
                        Container(
                          width: 90.0,
                          child: Tab(
                            child: Text('Living Room', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                          ),
                        ),
                        Container(
                          width: 90.0,
                          child: Tab(
                            child: Text('Kitchen', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                          ),
                        ),
                        Container(
                          width: 90.0,
                          child: Tab(
                            child: Text('Dinning', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                          ),
                        ),
                        Container(
                          width: 90.0,
                          child: Tab(
                            child: Text('Bathroom', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        body:  TabBarView(
          children: <Widget>[
            PageTab(),
            Column(
              children: <Widget>[Text("Kitchen")],
            ),
            Column(
              children: <Widget>[Text("Dinning")],
            ),
            Column(
              children: <Widget>[Text("Bethroom")],
            ),
          ],
        ),
        bottomNavigationBar: Container(
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              IconButton(icon: Icon(FontAwesomeIcons.home, color: Colors.black), onPressed: null),
              IconButton(icon: Icon(FontAwesomeIcons.bolt), onPressed: null),
              IconButton(icon: Icon(FontAwesomeIcons.slidersH), onPressed: null),
            ],
          ),
        ),
      ),
    );
  }
}