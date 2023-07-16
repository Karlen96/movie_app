import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../entities/movie_entity/movie_entity.dart';
import '../enums/movie_type.dart';
import '../pages/dashboard_page/dashboard_page.dart';
import '../pages/genre_page/genre_page.dart';
import '../pages/movie_page/movie_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  final List<AutoRoute> routes = [
    AutoRoute(
      initial: true,
      path: '/',
      page: DashboardRoute.page,
    ),
    AutoRoute(
      page: MovieRoute.page,
    ),
    AutoRoute(
      page: GenreRoute.page,
    ),
  ];
}
