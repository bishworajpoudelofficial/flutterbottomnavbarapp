import 'package:flutter/material.dart';

void main()=> runApp(const MaterialApp(
  debugShowCheckedModeBanner: false,
  title: "Bottom Nav App",
  home: MainPage(),
));


class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex =0;

  List<Widget> meroWidget = <Widget>[
    HamroOption("Welcome to Home", const Color(0xFF3944F7)),
    HamroOption("Welcome to About", const Color(0xFFB4161B)),
    HamroOption("Welcome to Settings",const Color(0xFF3DBE29)),
     
  ];

  _onItemTap(int index){
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF35BDD0),
        title: const Text("Bottom Navigation App"),
      ),
      body: Center(
        child: meroWidget.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home"
          ),
          BottomNavigationBarItem(
             icon: Icon(Icons.info),
            label: "About"
          ),
          BottomNavigationBarItem(
             icon: Icon(Icons.settings),
            label: "Settings"
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTap,
        
      ),

    );
  }
}

class HamroOption extends StatelessWidget {
 final String title;
 final Color color;
  HamroOption(this.title, this.color);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: color,
        ),
        height: 100,
        width: double.infinity,
       
        child: Center(
          child: Text(title, style: const TextStyle(fontSize: 40, color: Colors.white),),
        ),
      ),
    );
  }
}