import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/pages/dashboard_page/widgets/custom_flexible_space.dart';
import '../../state/dashboard_state/dashboard_state.dart';
import '../../widgets/slider_item.dart';

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
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          const SliverAppBar(
            backgroundColor: Colors.transparent,
            flexibleSpace: CustomFlexibleSpace(),
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
}
