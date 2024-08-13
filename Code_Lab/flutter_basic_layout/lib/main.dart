import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar (
        title: const Text("Hey, User!"),
        backgroundColor: Colors.red,  
      ),
      body: const Center(child: Text(
        "Made you look 😎",
        style: TextStyle(fontSize: 45),
        ),
        ),
        drawer: const Drawer(),
        floatingActionButton: const FloatingActionButton(
          onPressed: null,
          backgroundColor: Colors.red,
          child:Icon(Icons.add),
        ),
        bottomNavigationBar: const BottomAppBar(
          color: Colors.grey,
            child: Row (
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon
                (Icons.home, 
                size: 30
                ),
                Icon
                (Icons.search, 
                size: 30
                ),
                Icon(
                Icons.person, 
                size: 30
                ),
              ],
            ),
          ),
        );
  }
}