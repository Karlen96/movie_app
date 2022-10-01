import 'package:flutter/material.dart';

import '../../entities/movie_entitiy/movie_entity.dart';
import '../../moxins/after_first_layout.dart';
import '../../state/movie_state/movie_state.dart';
import 'widget/custom_flexible_space.dart';

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
  }

  @override
  Future<void> afterFirstLayout(BuildContext context) async {
    await movieState.getMovie();
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
            flexibleSpace: CustomFlexibleSpace(
              movieState: movieState,
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 1000,
            ),
          ),
        ],
      ),
    );
  }
}
