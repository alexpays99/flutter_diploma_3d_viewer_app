import 'package:flutter/material.dart';
import 'package:flutter_diploma_3d_viewer_app/provider/ModelProvider.dart';
import 'package:flutter_diploma_3d_viewer_app/screens/home_screen.dart';
import 'package:flutter_diploma_3d_viewer_app/screens/model_info.dart';
import 'package:flutter_diploma_3d_viewer_app/widgets/bottom_navigation_bar.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ModelProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
      initialRoute: '/bottom_navigation_bar',
      routes: {
        '/home': (context) => const HomePage(),
        '/bottom_navigation_bar': (context) =>
            const BottomNavigationBarWidget(),
        '/model_info': (context) => const ModelInfo(),
      },
    );
  }
}
