import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_clone/application/bloc/home_bloc.dart';
import 'package:netflix_clone/core/colors/colors.dart';

// import 'package:netflix_clone/application/bloc/home_bloc.dart';

import 'package:netflix_clone/core/common/constants.dart';
import 'package:netflix_clone/core/common/widgets/mainCardTile.dart';
import 'package:netflix_clone/core/common/widgets/subtitle_widget.dart';
import 'package:netflix_clone/core/string.dart';
import 'package:netflix_clone/presentation/home/widgets/main_background.dart';

final List imageUrlList = [
  "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/ekZobS8isE6mA53RAiGDG93hBxL.jpg",
  "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/lAXONuqg41NwUMuzMiFvicDET9Y.jpg",
  "https://www.themoviedb.org/t/p/w220_and_h330_face/wFjboE0aFZNbVOF05fzrka9Fqyx.jpg",
  "https://www.themoviedb.org/t/p/original/flLF4Oe4MTz6U6iqeLEULl6RCfu.jpg",
  "https://www.themoviedb.org/t/p/w220_and_h330_face/rnheO8cFvCYcmZsDrBoabJbKLFE.jpg",
  "https://www.themoviedb.org/t/p/w220_and_h330_face/7Bttz4hEspKlpU0Me57dkHNR3nf.jpg",
  "https://www.themoviedb.org/t/p/original/fzANAOf0YlDsol1XDzSp6WPTUv3.jpg",
  "https://www.themoviedb.org/t/p/original/j39IIKLYWsGzMepFE1xFBFbFsd3.jpg"
];

ValueNotifier<bool> scrollNotifier = ValueNotifier(true);

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<HomeBloc>(context).add(const GetHomeScreenData());
    });

    return Scaffold(
        body: SafeArea(
            child: NotificationListener<UserScrollNotification>(
      onNotification: (notification) {
        final ScrollDirection direction = notification.direction;

        if (direction == ScrollDirection.reverse) {
          scrollNotifier.value = false;
        } else if (direction == ScrollDirection.forward) {
          scrollNotifier.value = true;
        }

        return true;
      },
      child: ValueListenableBuilder(
        valueListenable: scrollNotifier,
        builder: (context, value, _) {
          return Stack(
            children: [
              BlocBuilder<HomeBloc, HomeState>(
                builder: (context, state) {
                  if (state.isLoading) {
                    return const Center(
                      child: CircularProgressIndicator(
                        strokeWidth: 2,
                      ),
                    );
                  }
                  if (state.hasError) {
                    return const Center(
                      child: Text(
                        'Error While Getting Data',
                        style: TextStyle(color: kwhiteColor),
                      ),
                    );
                  }

                  if (state.top10TvShowsList.isEmpty) {
                    return const Center(
                      child: Text('No Data Available'),
                    );
                  }
                  // released past year

                  final _releasesPathYear = state.pastYearMovieList.map((e) {
                    return '$imageAppendUrl${e.posterPath}';
                  }).toList();

                  //trending now
                  final _trendingNow = state.trendingNowList.map((e) {
                    return '$imageAppendUrl${e.posterPath}';
                  }).toList();

                  //tense dramas
                  final _tenseDramas = state.tenseDramasList.map((e) {
                    return '$imageAppendUrl${e.posterPath}';
                  }).toList();

                  // south indian

                  final _southIndian = state.southIndianMovieList.map((e) {
                    return '$imageAppendUrl${e.posterPath}';
                  }).toList();

                  return ListView(
                    children: [
                      const MainBackgroundCard(),
                      kheight,
                      const SubTitleWidgetCustom(
                          title: 'Released In Past Year'),
                      ImageTileWidgetCustom(
                        imageUrl: imageUrlList[0],
                        posterPathList: _releasesPathYear,
                      ),
                      kheight,
                      const SubTitleWidgetCustom(title: 'Trending Now'),
                      ImageTileWidgetCustom(
                        imageUrl: imageUrlList[1],
                        posterPathList: _trendingNow,
                      ),
                      kheight,
                      const SubTitleWidgetCustom(
                          title: 'Top 10 TV Shows In India Today'),
                      ToptenImageWidget(
                        imageUrl: imageUrlList[4],
                        posterUrl: _releasesPathYear,
                      ),
                      kheight,
                      const SubTitleWidgetCustom(title: 'Tense Dramas'),
                      ImageTileWidgetCustom(
                        imageUrl: imageUrlList[2],
                        posterPathList: _tenseDramas,
                      ),
                      const SubTitleWidgetCustom(title: 'South Indian Cinema'),
                      ImageTileWidgetCustom(
                        imageUrl: imageUrlList[3],
                        posterPathList: _southIndian,
                      )
                    ],
                  );
                },
              ),
              scrollNotifier.value ? const TopAppBar() : kheight
            ],
          );
        },
      ),
    )));
  }
}

class ToptenImageWidget extends StatelessWidget {
  const ToptenImageWidget(
      {Key? key, required this.imageUrl, required this.posterUrl})
      : super(key: key);
  final String imageUrl;
  final List<String> posterUrl;

  @override
  Widget build(BuildContext context) {
    return LimitedBox(
      maxHeight: 220, //maxWidth: 150,
      child: ListView(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        children: List.generate(
            10,
            (index) => ToptenImageTile(
                  imageurl: posterUrl[index],
                  index: index,
                )),
      ),
    );
  }
}

// top 10 Custom image tile number + image //

class ToptenImageTile extends StatelessWidget {
  const ToptenImageTile({Key? key, required this.index, required this.imageurl})
      : super(key: key);
  final int index;
  final String imageurl;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            children: [
              kimageWidth,
              MainCardTileWidgetCustom(customurl: imageurl),
            ],
          ),
        ),
        Positioned(
            bottom: 0,
            child: BorderedText(
              child: Text(
                '${index + 1}',
                style: const TextStyle(fontSize: 100, color: Colors.black),
              ),
              strokeColor: Colors.white,
            ))
      ],
    );
  }
}

// normal list tile widget//

class ImageTileWidgetCustom extends StatelessWidget {
  const ImageTileWidgetCustom(
      {Key? key, required this.imageUrl, required this.posterPathList})
      : super(key: key);
  final String imageUrl;
  final List<String> posterPathList;
  @override
  Widget build(BuildContext context) {
    return LimitedBox(
      maxHeight: 220,
      child: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          children: List.generate(
              posterPathList.length,
              (index) => MainCardTileWidgetCustom(
                    customurl: posterPathList[index],
                  ))),
    );
  }
}
