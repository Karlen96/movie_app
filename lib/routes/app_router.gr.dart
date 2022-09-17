// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    DashboardRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const DashboardPage());
    },
    MovieRoute.name: (routeData) {
      final args = routeData.argsAs<MovieRouteArgs>();
      return MaterialPageX<dynamic>(
          routeData: routeData,
          child: MoviePage(key: args.key, movie: args.movie),
          fullscreenDialog: true);
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(DashboardRoute.name, path: '/'),
        RouteConfig(MovieRoute.name, path: '/movie-page')
      ];
}

/// generated route for
/// [DashboardPage]
class DashboardRoute extends PageRouteInfo<void> {
  const DashboardRoute() : super(DashboardRoute.name, path: '/');

  static const String name = 'DashboardRoute';
}

/// generated route for
/// [MoviePage]
class MovieRoute extends PageRouteInfo<MovieRouteArgs> {
  MovieRoute({Key? key, required MovieEntity movie})
      : super(MovieRoute.name,
            path: '/movie-page', args: MovieRouteArgs(key: key, movie: movie));

  static const String name = 'MovieRoute';
}

class MovieRouteArgs {
  const MovieRouteArgs({this.key, required this.movie});

  final Key? key;

  final MovieEntity movie;

  @override
  String toString() {
    return 'MovieRouteArgs{key: $key, movie: $movie}';
  }
}
