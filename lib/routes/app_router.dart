import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import '../entities/movie_entitiy/movie_entity.dart';
import '../pages/dashboard_page/dashboard_page.dart';
import '../pages/movie_page/movie_page.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  preferRelativeImports: true,
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    MaterialRoute(
      page: DashboardPage,
      initial: true,
    ),
    // AdaptiveRoute(
    //   page: MoviePage,
    // ),

    MaterialRoute(
      page: MoviePage,
      fullscreenDialog: true,
    ),
  ],
)
class AppRouter extends _$AppRouter {}
