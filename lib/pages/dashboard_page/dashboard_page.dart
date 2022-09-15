import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../state/dashboard_state/dashboard_state.dart';
import '../../widgets/slider_item.dart';
import 'widgets/custom_flexible_space.dart';
import 'widgets/drawer.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  final dashboardState = DashboardState();

  @override
  void initState() {
    super.initState();
    dashboardState.getMovies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: const DashboardDrawer(),
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.transparent,
            flexibleSpace: CustomFlexibleSpace(
              openDrawer: _openDrawer,
            ),
          ),
          SliverToBoxAdapter(
            child: CarouselSlider(
              options: CarouselOptions(
                autoPlay: true,
                enlargeCenterPage: true,
                height: MediaQuery.of(context).size.height * 0.3,
              ),
              items: dashboardState.movies.map(
                (item) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 16,
                    ),
                    child: SliderItem(movie: item),
                  );
                },
              ).toList(),
            ),
          )
        ],
      ),
    );
  }

  void _openDrawer() {
    _scaffoldKey.currentState?.openDrawer();
  }
}
