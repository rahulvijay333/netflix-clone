import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_clone/application/fast_laughs/fast_laughs_bloc.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/core/common/constants.dart';
import 'package:netflix_clone/core/common/widgets/actionIconTileWidget.dart';
import 'package:netflix_clone/core/string.dart';
import 'package:netflix_clone/domain/downloads/model/download_response.dart';
import 'package:netflix_clone/presentation/fast_laughs/screen_fast_laughs.dart';
import 'package:netflix_clone/presentation/fast_laughs/widget/video_player_widget.dart';
import 'package:share_plus/share_plus.dart';

final videoUrlList = [
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerEscapes.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerFun.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/WeAreGoingOnBullrun.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/WhatCarCanYouGetForAGrand.mp4"
];

class VideoListItemInheritedWidget extends InheritedWidget {
  final Widget widget;
  final ResponseData movieData;

  const VideoListItemInheritedWidget({
    Key? key,
    required this.widget,
    required this.movieData,
  }) : super(key: key, child: widget);

  static VideoListItemInheritedWidget? of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<VideoListItemInheritedWidget>();
  }

  @override
  bool updateShouldNotify(covariant VideoListItemInheritedWidget oldWidget) {
    return oldWidget.movieData != movieData;
  }
}

class VideoListItem extends StatelessWidget {
  final int index;
  //final String testUrl;

  const VideoListItem({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _videoUrl = videoUrlList[index % videoUrlList.length];
    final posterPath =
        VideoListItemInheritedWidget.of(context)?.movieData.posterPath;
    return Stack(
      children: [
        // Container(
        //   height: double.infinity, width: double.infinity,
        //   decoration: BoxDecoration(
        //     image: DecorationImage(
        //         image: NetworkImage('$imageAppendUrl$posterPath')),
        //   ),
        //   //color: Colors.accents[index % Colors.accents.length],
        // ),
        FastLaughVideoPlayer(videoUrl: _videoUrl, onStateChanged: (bool) {}),
        Align(
          alignment: Alignment.bottomLeft,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // stack icon top of image

                CircleAvatar(
                    backgroundColor: Colors.black.withOpacity(0.5),
                    radius: 27,
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.volume_off_rounded,
                          color: kwhiteColor,
                          size: 30,
                        ))),

                //vedio action buttons
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage:
                            NetworkImage('$imageAppendUrl$posterPath'),
                      ),
                      kheight20,
                      ValueListenableBuilder(
                        valueListenable: likedVideosNotifier,
                        builder: (context, Set<int> newLikedListIds, child) {
                          final _index = index;
                          if (newLikedListIds.contains(_index)) {
                            return GestureDetector(
                              onTap: () {
                                BlocProvider.of<FastLaughsBloc>(context)
                                    .add(Unliked(id: _index));
                                    likedVideosNotifier.notifyListeners();

                              },
                              child: const ActionsIconTileWidget(
                                  title: 'Liked', icon: Icons.favorite, desiredCoolor: Colors.redAccent,),
                            );
                          }
                          return GestureDetector(
                            onTap: () {
                                    //--------------function here to be replaced

                              BlocProvider.of<FastLaughsBloc>(context)
                                  .add(Liked(id: _index));
                                  likedVideosNotifier.notifyListeners();
                            },
                            child: const ActionsIconTileWidget(
                                title: 'LOL', icon: Icons.emoji_emotions, desiredCoolor: kwhiteColor,),
                          );
                        },

                      ),
                      // const ActionsIconTileWidget(
                      //   title: 'Liked',
                      //   icon: Icons.favorite,
                      //   desiredCoolor: Colors.redAccent,
                      // ),
                      const ActionsIconTileWidget(
                          title: 'My List',
                          icon: Icons.add,
                          desiredCoolor: kwhiteColor),
                      GestureDetector(
                          onTap: () {
                            final movieUrl = posterPath;
                            if (movieUrl == null) {
                              return;
                            }
                            Share.share(movieUrl);
                            //print('hey url share $movieUrl');
                          },
                          child: const ActionsIconTileWidget(
                            title: 'Share',
                            icon: Icons.share,
                            desiredCoolor: Colors.blue,
                          )),
                      GestureDetector(
                        onTap: () {
                          //log('play vedio!!!!!!!!!!!!!!!!!!');
                        },
                        child: const ActionsIconTileWidget(
                          title: 'Play',
                          icon: Icons.play_circle,
                          desiredCoolor: kwhiteColor,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
