import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import '../pages/dashboard_page/dashboard_page.dart';
import '../pages/movie_page/movie_page.dart';

part 'app_router.gr.dart';

@AdaptiveAutoRouter(
  preferRelativeImports: true,
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AdaptiveRoute(
      page: DashboardPage,
      initial: true,
    ),
    AdaptiveRoute(page: MoviePage),
  ],
)
class AppRouter extends _$AppRouter {}
