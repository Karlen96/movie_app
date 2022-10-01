import 'dart:async';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../moxins/after_first_layout.dart';
import '../../state/dashboard_state/dashboard_state.dart';
import '../../widgets/slider_item.dart';
import 'widgets/custom_flexible_space.dart';
import 'widgets/drawer.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> with AfterLayoutMixin {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  final dashboardState = DashboardState();

  @override
  Future<void> afterFirstLayout(BuildContext context) async {
    await dashboardState.getMovies();
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
            child: Observer(
              builder: (_) {
                return CarouselSlider(
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
                );
              },
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(height: 12),
          ),
          // SliverToBoxAdapter(
          //   child: SingleChildScrollView(
          //     clipBehavior: Clip.none,
          //     physics: const BouncingScrollPhysics(),
          //     padding: const EdgeInsets.only(
          //       left: horizontalPaddingValue,
          //     ),
          //     scrollDirection: Axis.horizontal,
          //     child: Row(
          //       children: MovieType.values
          //           .map(
          //             (item) => MovieTypeWidget(
          //               movieType: item,
          //             ),
          //           )
          //           .toList(),
          //     ),
          //   ),
          // ),
          const SliverToBoxAdapter(
            child: SizedBox(height: 12),
          ),
          // SliverToBoxAdapter(
          //   child: Observer(
          //     builder: (_) => MoviesHorizontalListWrapper(
          //       movies: dashboardState.movies,
          //       title: 'dashboardPage.myList'.tr(),
          //     ),
          //   ),
          // ),
          const SliverToBoxAdapter(
            child: SizedBox(height: 12),
          ),
          // SliverToBoxAdapter(
          //   child: Observer(
          //     builder: (_) => MoviesHorizontalListWrapper(
          //       movies: dashboardState.movies,
          //       title: 'dashboardPage.popular'.tr(),
          //     ),
          //   ),
          // ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: MediaQuery.of(context).padding.bottom + 12,
            ),
          ),
        ],
      ),
    );
  }

  void _openDrawer() {
    _scaffoldKey.currentState?.openDrawer();
  }
}
