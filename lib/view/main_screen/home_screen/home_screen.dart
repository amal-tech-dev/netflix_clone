import 'package:flutter/material.dart';
import 'package:netflix_1/utils/database.dart';
import 'package:netflix_1/utils/color_constants.dart';
import 'package:netflix_1/utils/image_constants.dart';
import 'package:netflix_1/view/main_screen/home_screen/home_screen_widgets/movies_tile_builder.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({
    super.key,
    required this.username,
  });
  final String username;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.bgColor,
      body: ListView(
        children: [
          Stack(
            children: [
              CarouselSlider.builder(
                itemCount: 3,
                itemBuilder: (context, index, realIndex) => Image.asset(
                  DataBase.banners[index],
                ),
                options: CarouselOptions(
                  autoPlay: true,
                  height: 400,
                  enlargeCenterPage: false,
                  initialPage: 0,
                  viewportFraction: 1,
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Text(
                  '#2 in Nigeria Today',
                  style: TextStyle(
                    color: ColorConstant.textColor,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            ImageConstant.appLogoMini,
                            height: 30,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'TV Shows',
                              style: TextStyle(
                                color: ColorConstant.textColor,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Movies',
                              style: TextStyle(
                                color: ColorConstant.textColor,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'My List',
                              style: TextStyle(
                                color: ColorConstant.textColor,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 50,
                  width: 100,
                  child: Column(
                    children: [
                      Icon(
                        Icons.add_rounded,
                        color: ColorConstant.iconColor,
                      ),
                      Text(
                        'My List',
                        style: TextStyle(
                          color: ColorConstant.textColor,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 50,
                  width: 120,
                  decoration: BoxDecoration(
                    color: Color(0xFFC4C4C4),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.play_arrow_rounded,
                        size: 40,
                      ),
                      Text(
                        'Play  ',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 50,
                  width: 100,
                  child: Column(
                    children: [
                      Icon(
                        Icons.info_outline_rounded,
                        color: ColorConstant.iconColor,
                      ),
                      Text(
                        'Info',
                        style: TextStyle(
                          color: ColorConstant.textColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          MoviesListBuilder(
            title: 'Previews',
            moviesList: DataBase.previews,
            height: 100,
            fontSize: 30,
            shape: BoxShape.circle,
          ),
          MoviesListBuilder(
            title: 'Continue Watching For $username',
            moviesList: DataBase.continueWatching,
            height: 170,
            childVisiblity: true,
          ),
          MoviesListBuilder(
            title: 'Popular on Netflix',
            moviesList: DataBase.popularOnNetflix,
          ),
          MoviesListBuilder(
            title: 'Trending Now',
            moviesList: DataBase.trendingNow,
          ),
          MoviesListBuilder(
            title: 'Top 10 in Nigeria Today',
            moviesList: DataBase.top10,
          ),
          MoviesListBuilder(
            title: 'My List',
            moviesList: DataBase.myList,
          ),
          MoviesListBuilder(
            title: 'African Movies',
            moviesList: DataBase.africanMovies,
          ),
          MoviesListBuilder(
            title: 'Nollywood Movies & TV',
            moviesList: DataBase.nollywood,
          ),
          MoviesListBuilder(
            title: 'Netflix Originals',
            moviesList: DataBase.netflixOriginals,
            height: 250,
            width: 150,
          ),
          MoviesListBuilder(
            title: 'Watch It Again',
            moviesList: DataBase.watchAgain,
          ),
          MoviesListBuilder(
            title: 'New Releases',
            moviesList: DataBase.newReleases,
          ),
          MoviesListBuilder(
            title: 'TV Thrillers & Mysteries',
            moviesList: DataBase.tvThrillersAndMysteries,
          ),
          MoviesListBuilder(
            title: 'US TV Shows',
            moviesList: DataBase.tvShows,
          ),
        ],
      ),
    );
  }
}
