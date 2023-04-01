import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../consts/app_colors.dart';
import '../../../consts/dimens.dart';
import '../../../enums/movie_type.dart';
import '../../../routes/router.dart';

class GenreCustomFlexibleSpace extends StatelessWidget
    with PreferredSizeWidget {
  const GenreCustomFlexibleSpace({
    super.key,
    required this.movieType,
  });

  final MovieType movieType;

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      alignment: Alignment.bottomCenter,
      clipBehavior: Clip.none,
      children: [
        Image.asset(
          movieType.imagePath,
          fit: BoxFit.cover,
        ),
        Positioned.fill(
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: AppColors.dark.withOpacity(0.4),
            ),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 12),
                child: Text(
                  movieType.title.tr(),
                  style: Theme.of(context).textTheme.headline3!.copyWith(
                        color: AppColors.white,
                      ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          left: horizontalPaddingValue,
          top: MediaQuery.of(context).padding.top + 12,
          child: CircleAvatar(
            backgroundColor: AppColors.white,
            child: IconButton(
              onPressed: router.pop,
              icon: const Icon(
                Icons.arrow_back,
                color: AppColors.dark,
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
