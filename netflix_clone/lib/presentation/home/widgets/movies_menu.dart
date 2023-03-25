import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_clone/application/downloads/downloads_bloc.dart';
import 'package:netflix_clone/core/common/constants.dart';
import 'package:netflix_clone/core/common/widgets/search_tile.dart';
import 'package:netflix_clone/core/string.dart';

class MoviesMenuHome extends StatelessWidget {
  const MoviesMenuHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Movies',
              style: TextStyle(fontSize: 40),
            ),
            kheight,
            Expanded(
              child: BlocBuilder<DownloadsBloc, DownloadsState>(
                builder: (context, state) {
                  if (state.isloading) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  } else {
                    return GridView.count(
                        crossAxisCount: 3,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                        childAspectRatio: 1 / 1.3,
                        children:
                            List.generate(state.downloads.length, (index) {
                          return MainCardWidget(
                            imageApiUrl:
                                '$imageAppendUrl${state.downloads[index].posterPath}',
                          );
                        }));
                  }
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
