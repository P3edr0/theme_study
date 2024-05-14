import 'package:flutter/material.dart';
import 'package:start_app/extensions/my_colors.dart';
import 'package:start_app/project_theme.dart';

void main() {
  runApp(const MyApp());
}

   

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ProjectTheme.lightTheme,
      //or:
       //ThemeData.light().copyWith(extensions:<ThemeExtension<dynamic>>[MyColors.light]),
darkTheme: ProjectTheme.darkTheme,
      // darkTheme:ThemeData.dark().copyWith(extensions:<ThemeExtension<dynamic>>[MyColors.dark]),

      home:  const MyHomePage(title: 'Flutter Demo Home Page'),
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
  int _counter = 0;
  bool odd = false;

  void _incrementCounter() {
    setState(() {
      _counter++;
      odd = _counter%2 ==0;
    });
  }

  @override
  Widget build(BuildContext context) {
    final myColors = Theme.of(context).extension<MyColors>()!;
    return Scaffold(
      appBar: AppBar(
        
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
             Text(
              'You have pushed the button this many times:',style: Theme.of(context).textTheme.bodyLarge



            ),
            Container(width: 400,height: 400,color: odd? myColors.sucess:myColors.failure ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), 
    );
  }
}
