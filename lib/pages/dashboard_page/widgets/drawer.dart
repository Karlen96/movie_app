import 'package:flutter/material.dart';

import '../../../consts/assets.dart';

class DashboardDrawer extends StatelessWidget {
  const DashboardDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            child: Image.asset(Assets.logoNetflix),
          ),
          ListTile(
            leading: const Icon(Icons.how_to_reg_rounded),
            title: const Text('Create account'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
