import 'package:assignment_netclan/screens/explore.dart';
import 'package:assignment_netclan/screens/refine.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 76, 27, 181),
        ),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget activePage = const ExploreScreen();

    if (_selectedIndex == 1) {
      activePage = const RefineScreen();
    }

    return Scaffold(
      body: activePage,
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.remove_red_eye_sharp,
                //color: Color.fromARGB(255, 13, 48, 77),
              ),
              label: "Explore",
              // backgroundColor: Colors.green,
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.checklist,
                //color: Color.fromARGB(255, 13, 48, 77),
              ),
              label: "Refine",
            ),
          ],
          unselectedLabelStyle: const TextStyle(
            color: Colors.black,
          ),
          unselectedItemColor: Colors.blue.shade200,
          type: BottomNavigationBarType.shifting,
          iconSize: 34,
          selectedItemColor: const Color.fromARGB(255, 13, 48, 77),
          onTap: _onItemTapped,
          elevation: 5),
    );
  }
}
