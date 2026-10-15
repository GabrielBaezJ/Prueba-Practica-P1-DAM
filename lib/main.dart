import 'package:flutter/material.dart';

import 'pantalla/menu_principal.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Práctica Flutter',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MenuPrincipal(),
    );
  }
}
