import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:movie_app/routes/app_router.dart';

import '../../routes/router.dart';
import '../../state/dashboard_state/dashboard_state.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  final dashboardState = DashboardState();

  @override
  void initState() {
    super.initState();
    dashboardState.getMovies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('test'),
      ),
      body: Observer(
        builder: (_) => Column(
          children: dashboardState.movies
              .map(
                (item) => InkWell(
                  onTap: () {
                    router.push(MovieRoute(id: item.id));
                  },
                  child: Text(
                    item.title,
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
