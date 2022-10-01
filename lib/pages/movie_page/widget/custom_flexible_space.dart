import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../../consts/app_colors.dart';
import '../../../consts/dimens.dart';
import '../../../routes/router.dart';
import '../../../state/movie_state/movie_state.dart';

class CustomFlexibleSpace extends StatelessWidget with PreferredSizeWidget {
  const CustomFlexibleSpace({
    super.key,
    required this.movieState,
  });

  final MovieState movieState;

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      alignment: Alignment.bottomCenter,
      children: [
        const Center(
          child: DecoratedBox(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: AppColors.dark,
                  offset: Offset(50, 50),
                  blurRadius: 1000,
                  spreadRadius: 50,
                ),
              ],
            ),
            child: SizedBox(
              width: 150,
              height: 150,
            ),
          ),
        ),
        Stack(
          fit: StackFit.expand,
          alignment: Alignment.bottomCenter,
          clipBehavior: Clip.none,
          children: [
            Hero(
              tag: movieState.movie.id,
              child: ClipPath(
                clipper: CustomImageClipper(),
                child: Observer(
                  builder: (_) => Image.network(
                    movieState.movie.imageUrl!,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: -32,
              left: 0,
              right: 0,
              child: SizedBox(
                width: 64,
                height: 64,
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
                            : const IconButton(
                                onPressed: null,
                                icon: Icon(Icons.play_arrow),
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
        Positioned(
          right: horizontalPaddingValue,
          top: MediaQuery.of(context).padding.top + 12,
          child: const CircleAvatar(
            backgroundColor: AppColors.white,
            child: IconButton(
              onPressed: null,
              icon: Icon(
                Icons.favorite,
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
