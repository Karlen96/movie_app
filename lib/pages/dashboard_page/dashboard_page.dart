import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:movie_app/pages/dashboard_page/widgets/movies_horizontal_list_wrapper.dart';

import '../../consts/dimens.dart';
import '../../enums/movie_type.dart';
import '../../state/dashboard_state/dashboard_state.dart';
import '../../widgets/slider_item.dart';
import 'widgets/custom_flexible_space.dart';
import 'widgets/drawer.dart';
import 'widgets/movie_type_widget.dart';

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
          SliverToBoxAdapter(
            child: SingleChildScrollView(
              clipBehavior: Clip.none,
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.only(
                left: horizontalPaddingValue,
              ),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: MovieType.values
                    .map(
                      (item) => MovieTypeWidget(
                        movieType: item,
                      ),
                    )
                    .toList(),
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(height: 12),
          ),
          SliverToBoxAdapter(
            child: Observer(
              builder: (_) => MoviesHorizontalListWrapper(
                movies: dashboardState.movies,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Observer(
              builder: (_) => MoviesHorizontalListWrapper(
                movies: dashboardState.movies,
              ),
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
