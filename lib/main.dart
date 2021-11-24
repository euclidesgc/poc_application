import 'package:flutter/material.dart';
import 'package:poc_application/src/produtos_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        dividerColor: Colors.transparent,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      routes: {
        '/produtos': (context) => const ProdutosPage(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            GestureDetector(
              child: const Text('1) Lista de produtos - Mobx'),
              onTap: () => Navigator.pushNamed(context, '/produtos'),
            ),
          ],
        ),
      ),
    );
  }
}
