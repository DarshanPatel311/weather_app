import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/provider/wether_provider.dart';
import 'package:weather_app/view/Home_Screen/home_screen.dart';

void main() {
  runApp(ChangeNotifierProvider(create: (context) => WeatherProvider(),child: MyApp(),));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: HomeScreen(),

    );
  }
}


