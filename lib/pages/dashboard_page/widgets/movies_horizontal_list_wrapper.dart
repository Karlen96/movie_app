import 'package:flutter/material.dart';

import '../../../consts/dimens.dart';
import '../../../entities/movie_entitiy/movie_entity.dart';

class MoviesHorizontalListWrapper extends StatelessWidget {
  const MoviesHorizontalListWrapper({
    super.key,
    required this.movies,
  });

  final List<MovieEntity> movies;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: horizontalPaddingValue,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('title'),
              IconButton(
                icon: const Icon(
                  Icons.arrow_forward_rounded,
                ),
                onPressed: () {},
              )
            ],
          ),
        ),
        SizedBox(
          height: 200,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: movies.length,
            clipBehavior: Clip.none,
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.only(
              left: horizontalPaddingValue,
            ),
            itemBuilder: (_, i) {
              return Padding(
                padding: const EdgeInsets.only(
                  right: horizontalPaddingValue,
                ),
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
                      children: [
                        Image.network(
                          movies[i].imageUrl!,
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
