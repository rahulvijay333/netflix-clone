import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_clone/application/hot_and_new/hot_and_new_bloc.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/core/common/constants.dart';
import 'package:netflix_clone/core/common/widgets/icon_PlusTextWidget.dart';
import 'package:netflix_clone/core/string.dart';
import 'package:intl/intl.dart';

class ComingSoonWidget extends StatelessWidget {
  const ComingSoonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<HotAndNewBloc>(context)
          .add(const HotAndNewEvent.getUpcomming());
    });

    Size size = MediaQuery.of(context).size;
    return RefreshIndicator(
      onRefresh: () async {
        BlocProvider.of<HotAndNewBloc>(context)
            .add(const HotAndNewEvent.getUpcomming());
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
          } else if (state.upcomingList.isEmpty) {
            return const Center(
              child: Text('Coming Soon List Empty'),
            );
          } else {
            return ListView.builder(
                itemCount: state.upcomingList.length,
                itemBuilder: (context, index) {
                  final _result = state.upcomingList[index];
                  String month = '';
                  String day = '';
                  String _releaseDate = '';
                  try {
                    final _date = DateTime.tryParse(_result.releaseDate!);

                    final formatedDate =
                        DateFormat.yMMMd('en_US').format(_date!);

                    month = formatedDate
                        .split(' ')
                        .first
                        .substring(0, 3)
                        .toUpperCase();
                    day = _result.releaseDate!.split('-')[2];

                    _releaseDate = '$month $day';
                  } catch (_) {
                    month = '';
                    day = '';
                    _releaseDate = '';
                  }

                  return comingsoon(
                    size: size,
                    movieName: _result.originalTitle ?? '-No Title-',
                    day: day,
                    month: month,
                    backdropUrlPath: '$imageAppendUrl${_result.backdropPath}',
                    description: _result.overview ?? '--No description--',
                    releaseDate: _releaseDate,
                  );
                });
          }
        },
      ),
    );
  }
}

class comingsoon extends StatelessWidget {
  const comingsoon({
    Key? key,
    required this.size,
    required this.movieName,
    required this.day,
    required this.month,
    required this.backdropUrlPath,
    required this.description,
    required this.releaseDate,
  }) : super(key: key);

  final Size size;
  final String movieName;
  final String day;
  final String month;
  final String backdropUrlPath;
  final String description;
  final String releaseDate;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        kheight20,
        Row(
          children: [
            kheight,
            SizedBox(
              width: 50,
              height: 400,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  //Date

                  Text(month,
                      style: const TextStyle(fontSize: 18, color: Colors.grey)),
                  Text(
                    day,
                    style: const TextStyle(
                      fontSize: 30,
                      //fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              width: size.width - 50,
              height: 400,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // image + volume icon
                  vedioTileWidget(
                    bpathUrl: backdropUrlPath,
                  ),
                  kheight,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          movieName,
                          style: const TextStyle(
                            fontSize: 18,
                            overflow: TextOverflow.ellipsis,
                          ),
                          maxLines: 2,
                        ),
                      ),
                      Row(
                        children: const [
                          IconsPlusTextCreatingWidget(
                            text: 'Remind Me',
                            icons: Icons.notifications,
                            iconColor: Colors.yellow,
                          ),
                          kwidthText20,
                          IconsPlusTextCreatingWidget(
                            text: 'Info',
                            icons: Icons.info,
                            iconColor: Colors.grey,
                          ),
                          kwidthText20,
                        ],
                      ),
                    ],
                  ),
                  kheight,
                  Text(
                    'Coming on $releaseDate',
                    style: CustomTextStyle,
                  ),
                  kheight,
                  Text(
                    movieName,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, letterSpacing: 1),
                  ),
                  kheight,

                  Expanded(
                    child: Text(
                      description,
                      style: const TextStyle(
                          color: Colors.grey, overflow: TextOverflow.ellipsis),
                      maxLines: 3,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        kheight
      ],
    );
  }
}

class vedioTileWidget extends StatelessWidget {
  const vedioTileWidget({
    Key? key,
    required this.bpathUrl,
  }) : super(key: key);
  final String bpathUrl;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: 200,
          child: Stack(
            children: [
              //image link
              Image.network(
                bpathUrl,
              ),
            ],
          ),
          //color: kwhiteColor,
        ),
        Positioned(
          bottom: 0,
          right: 10,
          child: CircleAvatar(
              backgroundColor: Colors.black.withOpacity(0.5),
              radius: 22,
              child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.volume_off_rounded,
                    color: kwhiteColor,
                    size: 20,
                  ))),
        ),
      ],
    );
  }
}
