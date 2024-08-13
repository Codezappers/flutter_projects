import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("My"),
              Text("app"),
            ],
          ),
          /*
        body: Center(
          child:Image( 
          image: image.asset('assets/images/flutter_logo.png')
          ),
          child: ElevatedButton(
            onPressed: null,
            child: Text('Button'),
        */
        ),
        bottomNavigationBar: const BottomAppBar(
            color: Colors.grey,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  iconSize: 30,
                  icon: Icon(Icons.home),
                  onPressed: null,
                ),
                IconButton(
                  iconSize: 30,
                  icon: Icon(Icons.search),
                  onPressed: null,
                ),
                IconButton(
                  iconSize: 30,
                  icon: Icon(Icons.add),
                  onPressed: null,
                ),
              ],
            )),
                drawer: Drawer(
          child: ListView(
            children: const [
              DrawerHeader(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/rdp_logo.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Text('Header'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}