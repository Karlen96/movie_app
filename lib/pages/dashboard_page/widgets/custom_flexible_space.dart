import 'package:flutter/material.dart';

class CustomFlexibleSpace extends StatelessWidget with PreferredSizeWidget {
  const CustomFlexibleSpace({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Positioned(
          left: 16,
          top: MediaQuery.of(context).padding.top + 4,
          child: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu_rounded),
          ),
        ),
        Image.network(
            'http://store-images.s-microsoft.com/image/apps.46851.9007199266246365.1f6d0339-ecce-4fe5-840a-652cd84111ad.ddef6be7-6304-41c0-a347-1d571b66dfb2'),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
