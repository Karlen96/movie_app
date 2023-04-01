import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_scale_tap/flutter_scale_tap.dart';

import '../../consts/app_colors.dart';
import '../../consts/dimens.dart';
import '../../enums/movie_type.dart';
import '../../mixins/after_first_layout.dart';
import '../../routes/app_router.dart';
import '../../routes/router.dart';
import '../../state/genre_state/genre_state.dart';
import 'widget/genre_custom_flexible_space.dart';

class GenrePage extends StatefulWidget {
  const GenrePage({
    super.key,
    required this.genre,
  });

  final MovieType genre;

  @override
  State<GenrePage> createState() => _GenrePageState();
}

class _GenrePageState extends State<GenrePage> with AfterLayoutMixin {
  late final GenreState genreState;

  @override
  void initState() {
    super.initState();
    genreState = GenreState(
      genre: widget.genre,
    );
    genreState.loadingState.toggleLoading();
  }

  @override
  Future<void> afterFirstLayout(BuildContext context) async {
    await genreState.getMoviesByGenre();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            expandedHeight: MediaQuery.of(context).size.height * 0.3,
            toolbarHeight: kToolbarHeight+12,
            pinned: true,
            elevation: 0,
            leading: const SizedBox(),
            flexibleSpace: GenreCustomFlexibleSpace(
              movieType: widget.genre,
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(height: horizontalPaddingValue),
          ),
          Observer(
            builder: (_) => SliverList(
              delegate: SliverChildBuilderDelegate(
                (_, i) {
                  return Padding(
                    padding: const EdgeInsets.only(
                      left: horizontalPaddingValue,
                      right: horizontalPaddingValue,
                      bottom: horizontalPaddingValue,
                    ),
                    child: SizedBox(
                      height: 180,
                      child: ScaleTap(
                        onPressed: () {
                          router.push(
                            MovieRoute(
                              movie: genreState.movies[i],
                            ),
                          );
                        },
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 3,
                                offset: const Offset(0, 1),
                              ),
                            ],
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Stack(
                              fit: StackFit.expand,
                              children: [
                                Hero(
                                  tag: genreState.movies[i].id,
                                  child: Image.network(
                                    genreState.movies[i].imageUrl,
                                    fit: BoxFit.cover,
                                    alignment: Alignment.topCenter,
                                  ),
                                ),
                                Positioned(
                                  bottom: 0,
                                  left: 0,
                                  right: 0,
                                  child: DecoratedBox(
                                    decoration: BoxDecoration(
                                      color: AppColors.dark.withOpacity(0.4),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 8,
                                        horizontal: 16,
                                      ),
                                      child: Text(
                                        genreState.movies[i].title,
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline4,
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
                childCount: genreState.movies.length,
              ),
            ),
          )
        ],
      ),
    );
  }
}
