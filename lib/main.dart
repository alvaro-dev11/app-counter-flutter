import 'package:counter_app/screens/counter_screen.dart';
// import 'package:counter_app/screens/home_screen.dart';
import 'package:flutter/material.dart';

// function para iniciar mi app
void main() {
  runApp(const MyApp());
}

/* 
clase principal que extiende un widget sin estado,
quiere decir que no se redibuja en ningun momento
 */
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        // home: HomeScreen());
        home: CounterScreen());
  }
}
