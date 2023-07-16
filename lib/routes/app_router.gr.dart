// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    DashboardRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const DashboardPage(),
      );
    },
    GenreRoute.name: (routeData) {
      final args = routeData.argsAs<GenreRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: GenrePage(
          key: args.key,
          genre: args.genre,
        ),
      );
    },
    MovieRoute.name: (routeData) {
      final args = routeData.argsAs<MovieRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: MoviePage(
          key: args.key,
          movie: args.movie,
        ),
      );
    },
  };
}

/// generated route for
/// [DashboardPage]
class DashboardRoute extends PageRouteInfo<void> {
  const DashboardRoute({List<PageRouteInfo>? children})
      : super(
          DashboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'DashboardRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [GenrePage]
class GenreRoute extends PageRouteInfo<GenreRouteArgs> {
  GenreRoute({
    Key? key,
    required MovieType genre,
    List<PageRouteInfo>? children,
  }) : super(
          GenreRoute.name,
          args: GenreRouteArgs(
            key: key,
            genre: genre,
          ),
          initialChildren: children,
        );

  static const String name = 'GenreRoute';

  static const PageInfo<GenreRouteArgs> page = PageInfo<GenreRouteArgs>(name);
}

class GenreRouteArgs {
  const GenreRouteArgs({
    this.key,
    required this.genre,
  });

  final Key? key;

  final MovieType genre;

  @override
  String toString() {
    return 'GenreRouteArgs{key: $key, genre: $genre}';
  }
}

/// generated route for
/// [MoviePage]
class MovieRoute extends PageRouteInfo<MovieRouteArgs> {
  MovieRoute({
    Key? key,
    required MovieEntity movie,
    List<PageRouteInfo>? children,
  }) : super(
          MovieRoute.name,
          args: MovieRouteArgs(
            key: key,
            movie: movie,
          ),
          initialChildren: children,
        );

  static const String name = 'MovieRoute';

  static const PageInfo<MovieRouteArgs> page = PageInfo<MovieRouteArgs>(name);
}

class MovieRouteArgs {
  const MovieRouteArgs({
    this.key,
    required this.movie,
  });

  final Key? key;

  final MovieEntity movie;

  @override
  String toString() {
    return 'MovieRouteArgs{key: $key, movie: $movie}';
  }
}
