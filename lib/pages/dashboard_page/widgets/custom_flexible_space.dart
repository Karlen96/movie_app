import 'package:flutter/material.dart';

import '../../../consts/assets.dart';

class CustomFlexibleSpace extends StatelessWidget implements PreferredSizeWidget {
  const CustomFlexibleSpace({
    super.key,
    required this.openDrawer,
  });

  final VoidCallback openDrawer;

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Positioned(
          left: 24,
          top: MediaQuery.of(context).padding.top + 4,
          child: IconButton(
            onPressed: openDrawer,
            icon: const Icon(Icons.menu_rounded),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: MediaQuery.of(context).padding.top + 4,
          ),
          child: Image.asset(Assets.logoNetflix),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
