import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_clone/application/search/search_bloc.dart';
import 'package:netflix_clone/core/common/widgets/search_tile.dart';
import 'package:netflix_clone/core/string.dart';
import 'package:netflix_clone/presentation/search/widget/top_title_widget.dart';

class SearchResultWidget extends StatelessWidget {
  const SearchResultWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const TitleWidget(title: 'Movies & TV'),
      Expanded(
        child: BlocBuilder<SearchBloc, SearchState>(builder: (context, state) {
          if (state.isLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state.isError) {
            return const Center(child: Text('Error while getting data'));
          } else if (state.searchResultList.isEmpty) {
            return const Center(
              child: Text('List is Empty'),
            );
          }
          return GridView.count(
              // shrinkWrap: true,
              crossAxisCount: 3,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              childAspectRatio: 1 / 1.3,
              children: List.generate(state.searchResultList.length, (index) {
                
                return MainCardWidget(
                  imageApiUrl:
                      '$imageAppendUrl${state.searchResultList[index].posterPath}',
                );
              }));
        }),
      )
    ]);
  }
}

