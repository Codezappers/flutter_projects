import 'package:flutter/material.dart';
import 'package:flutter_basic_widgets/screens/list_body.dart';

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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FlutterLogo(size: 40),
              Icon(
                Icons.notifications, 
                size: 30
                ),
            ],
          ),
        ),
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
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Home'),
                onTap: null, // Add your onTap function here

              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
                onTap: null, // Add your onTap function here
              ),
              ListTile(
                leading: Icon(Icons.contact_mail),
                title: Text('Contact'),
                onTap: null,
              ),
            ],
          ),
        ),
        
        body: ListView.builder(
          itemCount: numbers.length,
          itemBuilder: (BuildContext context, int index) {
            return numbers[index];
          },

        ),

        bottomNavigationBar: const BottomAppBar(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  iconSize: 30,
                  icon: Icon(Icons.home),
                  color: Colors.black,
                  onPressed: null,
                ),
                IconButton(
                  iconSize: 30,
                  icon: Icon(Icons.search),
                  color: Colors.black,
                  onPressed: null,
                ),
                IconButton(
                  iconSize: 30,
                  icon: Icon(Icons.add),
                  color: Colors.black,
                  onPressed: null,
                ),
              ],
            )
            ),
      ),
    );
  }
}
