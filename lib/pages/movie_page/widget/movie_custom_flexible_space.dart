import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../../consts/app_colors.dart';
import '../../../consts/dimens.dart';
import '../../../routes/router.dart';
import '../../../state/movie_state/movie_state.dart';

class MovieCustomFlexibleSpace extends StatelessWidget with PreferredSizeWidget {
  const MovieCustomFlexibleSpace({
    super.key,
    required this.movieState,
    required this.onPlay,
  });

  final MovieState movieState;
  final VoidCallback onPlay;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, __) {
        final settings = context
            .dependOnInheritedWidgetOfExactType<FlexibleSpaceBarSettings>();
        final deltaExtent = settings!.maxExtent - settings.minExtent;

        final t =
            (1.0 - (settings.currentExtent - settings.minExtent) / deltaExtent)
                .clamp(0.0, 1.0);
        final fadeStart =
            math.max(0, 1.0 - kToolbarHeight / deltaExtent).toDouble();
        const fadeEnd = 1.0;
        final opacity = 1.0 - Interval(fadeStart, fadeEnd).transform(t);

        return Stack(
          fit: StackFit.expand,
          alignment: Alignment.bottomCenter,
          clipBehavior: Clip.none,
          children: [
            Stack(
              fit: StackFit.expand,
              alignment: Alignment.bottomCenter,
              clipBehavior: Clip.none,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 32),
                  child: Hero(
                    tag: movieState.movie.id,
                    child: ClipPath(
                      clipper: CustomImageClipper(),
                      child: Observer(
                        builder: (_) => Image.network(
                          movieState.movie.imageUrl,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Opacity(
                    opacity: 1 - opacity,
                    child: const ColoredBox(
                      color: AppColors.white,
                      child: SizedBox(
                        height: 100,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).padding.top + 16,
                  left: 60,
                  right: 60,
                  child: Opacity(
                    opacity: 1 - opacity,
                    child: Text(
                      movieState.movie.title,
                      textAlign: TextAlign.center,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.headline5,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  width: 64,
                  height: 64,
                  child: Opacity(
                    opacity: opacity,
                    child: CircleAvatar(
                      backgroundColor: AppColors.white,
                      child: Observer(
                        builder: (_) {
                          return AnimatedSwitcher(
                            duration: const Duration(microseconds: 250),
                            child: movieState.loadingState.isLoading
                                ? const SizedBox(
                                    width: 24,
                                    height: 24,
                                    child: CircularProgressIndicator(),
                                  )
                                : IconButton(
                                    onPressed: onPlay,
                                    icon: const Icon(Icons.play_arrow),
                                  ),
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ],
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
            // Positioned(
            //   right: horizontalPaddingValue,
            //   top: MediaQuery.of(context).padding.top + 12,
            //   child: const CircleAvatar(
            //     backgroundColor: AppColors.white,
            //     child: IconButton(
            //       onPressed: null,
            //       icon: Icon(
            //         Icons.favorite,
            //         color: AppColors.dark,
            //       ),
            //     ),
            //   ),
            // ),
          ],
        );
      },
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class CustomImageClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path()..lineTo(0, size.height - 40.0);

    final controlPoint = Offset(size.width / 4, size.height);
    final endpoint = Offset(size.width / 2, size.height);

    path.quadraticBezierTo(
      controlPoint.dx,
      controlPoint.dy,
      endpoint.dx,
      endpoint.dy,
    );

    final controlPoint2 = Offset(size.width * 3 / 4, size.height);
    final endpoint2 = Offset(size.width, size.height - 40.0);

    path
      ..quadraticBezierTo(
        controlPoint2.dx,
        controlPoint2.dy,
        endpoint2.dx,
        endpoint2.dy,
      )
      ..lineTo(
        size.width,
        0,
      );

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
