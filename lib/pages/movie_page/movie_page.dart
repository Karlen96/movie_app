import 'package:flutter/material.dart';

import '../../consts/dimens.dart';
import '../../entities/movie_entity/movie_entity.dart';
import '../../entities/video_entity/video_entity.dart';
import '../../mixins/after_first_layout.dart';
import '../../state/movie_state/movie_state.dart';
import '../../widgets/video_player.dart';
import 'widget/movie_custom_flexible_space.dart';

class MoviePage extends StatefulWidget {
  const MoviePage({
    super.key,
    required this.movie,
  });

  final MovieEntity movie;

  @override
  State<MoviePage> createState() => _MoviePageState();
}

class _MoviePageState extends State<MoviePage> with AfterLayoutMixin {
  late final MovieState movieState;

  @override
  void initState() {
    super.initState();
    movieState = MovieState(
      movie: widget.movie,
    );
    movieState.loadingState.toggleLoading();
  }

  @override
  Future<void> afterFirstLayout(BuildContext context) async {
    await movieState.getMovie();
  }

  void onPlay() {
    VideoEntity? video;

    if (movieState.movie.videos != null &&
        movieState.movie.videos!.results.isNotEmpty) {
      video = movieState.movie.videos!.results.first;
    }

    if (video != null) {
      showDialog(
        context: context,
        builder: (context) => Dialog(
          child: VideoPlayerWidget(
            video: video!,
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.transparent,
            expandedHeight: MediaQuery.of(context).size.height * 0.4,
            pinned: true,
            stretch: true,
            leading: const SizedBox(),
            elevation: 0,
            flexibleSpace: MovieCustomFlexibleSpace(
              movieState: movieState,
              onPlay: onPlay,
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(
              vertical: 48,
              horizontal: horizontalPaddingValue,
            ),
            sliver: SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    movieState.movie.title,
                    style: Theme.of(context).textTheme.headline5,
                  ),
                  const SizedBox(height: 24),
                  Text(
                    movieState.movie.overview ?? '',
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                ],
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 500,
            ),
          ),
        ],
      ),
    );
  }
}
