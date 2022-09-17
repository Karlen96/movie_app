import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../consts/app_colors.dart';
import '../../../consts/assets.dart';
import '../../../consts/dimens.dart';
import '../../../enums/movie_type.dart';

class MovieTypeWidget extends StatelessWidget {
  const MovieTypeWidget({
    super.key,
    required this.movieType,
  });

  final MovieType movieType;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: horizontalPaddingValue,
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: AppColors.red.withOpacity(0.6),
          borderRadius: BorderRadius.circular(12),
          boxShadow: const [
            BoxShadow(
              color: AppColors.lightGray,
              spreadRadius: 2,
              blurRadius: 7,
              offset: Offset(1, 2),
            ),
          ],
        ),
        child: SizedBox(
          height: 60,
          child: Stack(
            children: [
              Image.asset(
                Assets.logoNetflix,
                fit: BoxFit.cover,
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 16,
                    horizontal: 12,
                  ),
                  child: Text(
                    movieType.title.tr(),
                    style: Theme.of(context).textTheme.headline4,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
