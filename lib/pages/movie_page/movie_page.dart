import 'package:flutter/material.dart';

import '../../entities/movie_entitiy/movie_entity.dart';
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

class _MoviePageState extends State<MoviePage> {
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
              imageUrl: widget.movie.imageUrl!,
              id: widget.movie.id,
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
