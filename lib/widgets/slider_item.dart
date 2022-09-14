import 'package:flutter/material.dart';

import '../entities/movie_entitiy/movie_entity.dart';

class SliderItem extends StatelessWidget {
  const SliderItem({
    Key? key,
    required this.movie,
  }) : super(key: key);

  final MovieEntity movie;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
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
            Image.network(
              movie.imageUrl!,
              fit: BoxFit.cover,
            ),
            Positioned(
              bottom: 16,
              left: 16,
              child: Text(
                movie.title,
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
