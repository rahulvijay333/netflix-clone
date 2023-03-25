
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_clone/application/hot_and_new/hot_and_new_bloc.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/core/common/constants.dart';
import 'package:netflix_clone/core/common/widgets/icon_PlusTextWidget.dart';
import 'package:netflix_clone/core/string.dart';

class EveryonesWatchingWidget extends StatelessWidget {
  const EveryonesWatchingWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<HotAndNewBloc>(context).add(HotAndNewEvent.getNowPlaying());
    });

    Size size = MediaQuery.of(context).size;

    return RefreshIndicator(
      onRefresh: () async {
       BlocProvider.of<HotAndNewBloc>(context).add(HotAndNewEvent.getNowPlaying());
      },
      child: BlocBuilder<HotAndNewBloc, HotAndNewState>(
        builder: (context, state) {
          if (state.isloading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state.isError) {
            return const Center(
              child: Text('Error While Getting Data'),
            );
          } else if (state.nowPlayingList.isEmpty) {
            return const Center(
              child: Text('Everyones watching List Empty'),
            );
          } else {
            return ListView.builder(
              physics: BouncingScrollPhysics(),
                padding: const EdgeInsets.all(20),
                itemCount: state.nowPlayingList.length,
                itemBuilder: (context, index) {
                  final _result = state.nowPlayingList[index];
                  return everyoneswatching(
                      size: size,
                      movieName: _result.originalTitle ?? 'No Title',
                      backdropUrlPath: '$imageAppendUrl${_result.backdropPath}',
                      description: _result.overview ?? 'No Description');
                });
          }
        },
      ),
    );
  }
}

class everyoneswatching extends StatelessWidget {
  const everyoneswatching({
    Key? key,
    required this.size,
    required this.movieName,
    required this.backdropUrlPath,
    required this.description,
  }) : super(key: key);

  final Size size;
  final String movieName;

  final String backdropUrlPath;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          //color: kwhiteColor,
          width: size.width,
          height: 450,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(children: [
                SizedBox(
                  width: size.width,
                  height: 200,
                  child: Image.network(
                    backdropUrlPath,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 5,
                  right: 0,
                  child: CircleAvatar(
                      backgroundColor: Colors.black.withOpacity(0.5),
                      radius: 22,
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.volume_off_rounded,
                            color: kwhiteColor,
                            size: 30,
                          ))),
                ),
              ]),
              kheight20,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      movieName,
                      maxLines: 1,
                      style: const TextStyle(
                        overflow: TextOverflow.ellipsis,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Row(
                    children: const [
                      IconsPlusTextCreatingWidget(
                        text: 'Share',
                        icons: Icons.share,
                        iconColor: kwhiteColor,
                      ),
                      kwidth,
                      IconsPlusTextCreatingWidget(
                        text: 'My List',
                        icons: Icons.add,
                        iconColor: kwhiteColor,
                      ),
                      kwidth,
                      IconsPlusTextCreatingWidget(
                        text: 'Play',
                        icons: Icons.play_arrow,
                        iconColor: kwhiteColor,
                      ),
                      kwidth
                    ],
                  )
                ],
              ),
              const CircleAvatar(
                backgroundImage: NetworkImage(url_logo),
              ),
              Text(
                movieName,
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Expanded(
                  child: Text(
                description,
                style: const TextStyle(overflow: TextOverflow.ellipsis),
                maxLines: 5,
              ))
            ],
          ),
        )
      ],
    );
  }
}
