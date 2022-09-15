import 'package:flutter/material.dart';

class MoviePage extends StatefulWidget {
  const MoviePage({
    super.key,
    required this.id,
  });

  final int id;

  @override
  State<MoviePage> createState() => _MoviePageState();
}

class _MoviePageState extends State<MoviePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('movie'),
      ),
    );
  }
}
