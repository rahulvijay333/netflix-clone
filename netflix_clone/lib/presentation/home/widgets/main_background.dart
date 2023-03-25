import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_clone/application/downloads/downloads_bloc.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/core/string.dart';
import 'package:netflix_clone/presentation/home/widgets/appbar.dart';
import 'package:netflix_clone/presentation/home/widgets/drop_down.dart';
import 'package:netflix_clone/presentation/home/widgets/movies_menu.dart';
import 'package:netflix_clone/presentation/home/widgets/tv_show_tile.dart';

ValueNotifier<String> categoryNotifier = ValueNotifier('');

class MainBackgroundCard extends StatelessWidget {
  const MainBackgroundCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<DownloadsBloc>(context)
          .add(const DownloadsEvent.getDownloadsImage());
    });
    return Stack(
      children: const [
        MainHomePageBackgroundCard(),
        ListPlayInfoWidget(),
        //TopAppBar()
      ],
    );
  }
}

// widget including logo,options
class TopAppBar extends StatelessWidget {
  const TopAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black.withOpacity(0.4),
      //color: Colors.amber,
      height: 100,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(top: 5, bottom: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const HomeAppBarWidget(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                //tv menu

                GestureDetector(
                    onTap: () {
                      // log('tv shows clicked');
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (ctx) {
                        return const TvShowsMenuHome();
                      }));
                    },
                    child: const Text('Tv Shows')),
                //movie menu
                GestureDetector(
                  onTap: () {
                    // log('Movies clicked');

                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (ctx) {
                      return const MoviesMenuHome();
                    }));
                  },
                  child: const Text(
                    'Movies',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                //------------------------------------------check here
                const CustomDropDownMenu(
                  keyValue: 'Category',
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

// widget for homepage background list ,play,info
class ListPlayInfoWidget extends StatelessWidget {
  const ListPlayInfoWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0,
      bottom: 10,
      right: 0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            children: const [
              Icon(
                Icons.add,
                color: Colors.white,
              ),
              Text(
                'My List',
                style: TextStyle(
                  color: kwhiteColor,
                  fontSize: 20,
                ),
              )
            ],
          ),
          TextButton.icon(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(kwhiteColor)),
              onPressed: () {},
              icon: const Icon(
                Icons.play_arrow_sharp,
                color: Colors.black,
              ),
              label: const Padding(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: Text(
                  'Play',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              )),
          Column(
            children: const [
              Icon(
                Icons.info,
                color: Colors.white,
              ),
              Text(
                'Info',
                style: TextStyle(
                  color: kwhiteColor,
                  fontSize: 20,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

//
// widget for homepage background image//

class MainHomePageBackgroundCard extends StatelessWidget {
  const MainHomePageBackgroundCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DownloadsBloc, DownloadsState>(
        builder: (context, state) {
      if (state.downloads.isEmpty) {
        return Center(
          child: Text('No Data Available'),
        );
      }

      return SizedBox(
        height: 620,
        width: double.infinity,
        child: state.isloading
            ? const Center(
                child: CircularProgressIndicator(
                  strokeWidth: 1,
                ),
              )
            : Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            '$imageAppendUrl${state.downloads[0].posterPath}'),
                        fit: BoxFit.fitHeight)),
              ),
        //color: Colors.amber,
      );
    });
  }
}
