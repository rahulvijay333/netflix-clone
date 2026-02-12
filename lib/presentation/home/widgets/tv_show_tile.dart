import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_clone/application/hot_and_new/hot_and_new_bloc.dart';
import 'package:netflix_clone/core/common/constants.dart';
import 'package:netflix_clone/core/common/widgets/search_tile.dart';
import 'package:netflix_clone/core/string.dart';

class TvShowsMenuHome extends StatelessWidget {
  const TvShowsMenuHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<HotAndNewBloc>(context)
          .add(const HotAndNewEvent.getUpcomming());
    });
    return Scaffold(
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Tv Shows',
            style: TextStyle(fontSize: 35),
          ),
          kheight,
          Expanded(
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
                    child: Text('Tv Shows List Empty'),
                  );
                } else {
                  return GridView.count(
                      // shrinkWrap: true,
                      crossAxisCount: 3,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      childAspectRatio: 1 / 1.3,
                      children:
                          List.generate(state.upcomingList.length, (index) {
                        return MainCardWidget(
                          imageApiUrl:
                              '$imageAppendUrl${state.upcomingList[index].posterPath}',
                        );
                      }));
                }
              },
            ),
          )
        ],
      )),
    );
  }
}
