import 'package:flutter/material.dart';
import 'package:movie_app/pages/dashboard_page/dashboard_page.dart';
import 'package:movie_app/pages/movie_page/movie_page.dart';

Route onGenerateRoute(settings) {
  if (settings.name == '/movie') {
// final value = settings.arguments as int;
    return MaterialPageRoute(
      builder: (_) => const MoviePage(),
    );
  }
  return MaterialPageRoute(
    builder: (_) => const DashboardPage(),
  );
}

final routes = {
  '/': (_) => const DashboardPage(),
  '/movie': (_) => const MoviePage(),
};
