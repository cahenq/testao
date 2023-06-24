import 'package:calculatorapp/components/display.dart';
import 'package:calculatorapp/components/keyboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'memoria.dart';

void  main(){
  runApp(MyApp());
}


class MyApp extends StatefulWidget {

  
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final Memory memory = Memory();
  
  _onPressed(String command){
    setState(() {
      memory.applyCommand(command);
    });
  }



  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp
    ]);

    return MaterialApp(
      title: 'Calculadora',
      home: Scaffold(
        appBar: AppBar(
          title: Text('CALCULADORA'),
          elevation: 50,
          centerTitle: true,
          toolbarHeight: 40,
          backgroundColor: Color.fromARGB(255, 178, 15, 228),
          leading: IconButton(
            icon: Icon(Icons.reply),
            onPressed: (){
              SystemNavigator.pop();
            },
          ),
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.black, Color(0xFF0F0F0F)],
            ),
          ),
          child: Column(
            children: <Widget>[
              Display(memory.value),
              Keyboard(_onPressed)
              
            ],
          )
        ),
      ),
    );
  }
}
