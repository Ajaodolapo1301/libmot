import 'package:flutter/material.dart';
import 'package:libmot/provider/appState.dart';
import 'package:provider/provider.dart';

import 'chairs.dart';


Future <void> main() async {




  runApp(MultiProvider(
      providers: [

        ChangeNotifierProvider(create: (_)=>AppState()),
      ],
      child: MyApp()));
}
class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      title: 'Lib Motors',
      theme: ThemeData(

        fontFamily: 'SFPro',

      ),
      home: MyHomePage(),
    );
  }
}


