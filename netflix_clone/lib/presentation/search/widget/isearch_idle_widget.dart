import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_clone/application/downloads/downloads_bloc.dart';
import 'package:netflix_clone/application/search/search_bloc.dart';
import 'package:netflix_clone/core/common/constants.dart';
import 'package:netflix_clone/core/string.dart';
import 'package:netflix_clone/presentation/search/widget/searcg_tile_widget.dart';
import 'package:netflix_clone/presentation/search/widget/top_title_widget.dart';

const imageUrl =
    'https://www.themoviedb.org/t/p/w533_and_h300_bestv2/jgb9xICHFX8wTGQ75js4uNbttQs.jpg';

class SearchIdleWidget extends StatelessWidget {
  const SearchIdleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TitleWidget(
          title: 'Top Searches',
        ),
        kheight,
        Expanded(
          //-------------------------------------------->>BLOC HERE  <<-----------------------------
          child: BlocBuilder<SearchBloc, SearchState>(
            builder: (context, state) {
              if (state.isLoading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (state.isError) {
                return const Center(
                  child: Text('Error while getting data'),
                );
              } else if (state.idleList.isEmpty) {
                return const Center(
                  child: Text('List is Empty'),
                );
              }
              return ListView.separated(
                itemBuilder: (ctx, index) {
                  final movie = state.idleList[index];
                  return TopSearchTile(
                      movieUrl:
                          '$imageAppendUrl${state.idleList[index].posterPath}',
                      sTitle: movie.originalTitle ?? 'No Title Provided');
                },
                separatorBuilder: (ctx, index) {
                  return kheight20;
                },
                itemCount: state.idleList.length,
                shrinkWrap: true,
              );
            },
          ),
        )
      ],
    );
  }
}
