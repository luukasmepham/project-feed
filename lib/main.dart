import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'project-feed',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const HomePage(title: 'project-feed'),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _postText = "";

  void _post() {
    setState(() {
      _postText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Your post',
            ),
            Text(
              '$_postText',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const TextField(
              maxLines: 1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _post,
        tooltip: 'Increment',
        child: const Icon(Icons.comment),
      ),
    );
  }
}
