import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ppwic_app/views/view1.dart';
import 'package:ppwic_app/views/view2.dart';
import 'package:ppwic_app/views/view3.dart';
import 'package:ppwic_app/views/view4.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _Home();
}

class _Home extends State<Home> {
  List pages = [View1(), View2(), View3(), View4()];
  List<BottomNavigationBarItem> bItems = [
    const BottomNavigationBarItem(icon: Icon(Icons.home), label: '首页1'),
    const BottomNavigationBarItem(icon: Icon(Icons.cabin), label: '首页2'),
    const BottomNavigationBarItem(icon: Icon(Icons.safety_check), label: '首页3'),
    const BottomNavigationBarItem(icon: Icon(Icons.vaccines), label: '首页4')
  ];
  int current = 0;
  double a = 0.1;
  double b = 0.2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.deepPurpleAccent,
        title: const Text('12112'),
        centerTitle: true,
        // actions: [],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.deepPurple),
              child: Text('12211'),
            ),
            ListTile(
              title: Text('12211'),
              trailing: Icon(Icons.abc),
            ),
            ListTile(
              title: Text('12211'),
              trailing: Icon(Icons.abc),
            ),
            ListTile(
              title: Text('12211'),
              trailing: Icon(Icons.abc),
            ),
            ListTile(
              title: Text('12211'),
              trailing: Icon(Icons.abc),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print(a + b);
        },
        child: const Icon(Icons.abc),
        // backgroundColor: Colors.amber,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: bItems,
        currentIndex: current,
        onTap: (index) => setState(() {
          current = index;
        }),
        // fixedColor: Colors.red,
        // unselectedItemColor: Colors.amber,
      ),
      body: pages[current],
    );
  }
}
