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
          child: MoviePage(key: args.key, movie: args.movie));
    },
    GenreRoute.name: (routeData) {
      final args = routeData.argsAs<GenreRouteArgs>();
      return MaterialPageX<dynamic>(
          routeData: routeData,
          child: GenrePage(key: args.key, genre: args.genre));
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(DashboardRoute.name, path: '/'),
        RouteConfig(MovieRoute.name, path: '/movie-page'),
        RouteConfig(GenreRoute.name, path: '/genre-page')
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

/// generated route for
/// [GenrePage]
class GenreRoute extends PageRouteInfo<GenreRouteArgs> {
  GenreRoute({Key? key, required MovieType genre})
      : super(GenreRoute.name,
            path: '/genre-page', args: GenreRouteArgs(key: key, genre: genre));

  static const String name = 'GenreRoute';
}

class GenreRouteArgs {
  const GenreRouteArgs({this.key, required this.genre});

  final Key? key;

  final MovieType genre;

  @override
  String toString() {
    return 'GenreRouteArgs{key: $key, genre: $genre}';
  }
}
