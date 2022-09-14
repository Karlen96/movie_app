import 'package:flutter/material.dart';
import 'package:movie_app/pages/dashboard_page/dashboard_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Movie app',
      home: DashboardPage(),
    );
  }
}
