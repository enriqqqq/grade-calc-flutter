import 'package:flutter/material.dart';
import 'show_grade.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Grade Calculator',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Grade Calculator'),
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
  final tmController = TextEditingController();
  final utsController = TextEditingController();
  final uasController = TextEditingController();

  void _submit(BuildContext ctx) {
    final tm = int.parse(tmController.text);
    final uts = int.parse(utsController.text);
    final uas = int.parse(uasController.text);
    final grade = tm * 0.2 + uts * 0.3 + uas * 0.5;

    Navigator.of(ctx).push(
      MaterialPageRoute(
        builder: (_) => ShowGrade(grade: grade),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'TM',
              ),
              controller: tmController,
            ),
            TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'UTS',
              ),
              controller: utsController,
            ),
            TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'UAS',
              ),
              controller: uasController,
            ),
            TextButton(
              onPressed: () => _submit(context),
              child: const Text('Calculate'),
            )
          ],
        ),
      ),
    );
  }
}
