import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Named Routes Demo',
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/secondpage': (context) => const SecondPage(),
        '/thirdpage': (context) => const ThirdPage(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      backgroundColor: Colors.red,
      title: const Text('Home Page'),
    ),
    bottomNavigationBar: BottomAppBar(
      color: Colors.blueGrey,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/');
            },
            icon: const Icon(Icons.home),
            iconSize: 30,
            color: Colors.black,
            ),

            IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const SecondPage()));
            },
            icon: const Icon(Icons.settings),
            iconSize: 30,
            color: Colors.black,
            ),

            IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const SecondPage()));
            },
            icon: const Icon(Icons.person),
            iconSize: 30,
            color: Colors.black,
            ),

        ],

      ),
    ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      backgroundColor: Colors.red,
      title: const Text('Second Page'),
    ),
    bottomNavigationBar: BottomAppBar(
      color: Colors.blueGrey,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/');
            },
            icon: const Icon(Icons.home),
            iconSize: 30,
            color: Colors.black,
            ),

            IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/secondpage');
            },
            icon: const Icon(Icons.settings),
            iconSize: 30,
            color: Colors.black,
            ),

            IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/thirdpage');
            },
            icon: const Icon(Icons.person),
            iconSize: 30,
            color: Colors.black,
            ),
        ],
      ),
    ),
    );  
  }
}


class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      backgroundColor: Colors.red,
      title: const Text('Third Page'),
    ),
    bottomNavigationBar: BottomAppBar(
      color: Colors.blueGrey,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/');
            },
            icon: const Icon(Icons.home),
            iconSize: 30,
            color: Colors.black,
            ),

            IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/secondpage');
            },
            icon: const Icon(Icons.settings),
            iconSize: 30,
            color: Colors.black,
            ),

            IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/thirdpage');
            },
            icon: const Icon(Icons.person),
            iconSize: 30,
            color: Colors.black,
            ),
        ],
      ),
    ),
    );
  }
}