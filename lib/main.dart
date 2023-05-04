import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _messangerKey = GlobalKey<ScaffoldMessengerState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scaffoldMessengerKey: _messangerKey,
      home: Scaffold(
        appBar: AppBar(title: const Text("Material Widget")),
        body: Center(
          child: Chip(
            elevation: 7.0,
            shadowColor: Color.fromARGB(255, 106, 158, 255),
            avatar: CircleAvatar(
                backgroundColor: Colors.blueAccent,
                child: Text(
                  "SC",
                )),
            label: Text("Simone Carta"),
          ),
        ),
        floatingActionButton: FloatingActionButton(onPressed: () {
          final snackBar = SnackBar(
              content: Text("Prova snackbar"),
              action: SnackBarAction(label: "Undo", onPressed: () {}));

          _messangerKey.currentState?.showSnackBar(snackBar);
        }),
      ),
    );
  }
}
