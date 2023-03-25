import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_clone/application/search/search_bloc.dart';
import 'package:netflix_clone/core/common/constants.dart';
import 'package:netflix_clone/core/common/debouncer/debouncer.dart';
import 'package:netflix_clone/presentation/search/widget/isearch_idle_widget.dart';
import 'package:netflix_clone/presentation/search/widget/search_result_page.dart';

class ScreenSearch extends StatelessWidget {
  const ScreenSearch({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      BlocProvider.of<SearchBloc>(context).add(const SearchEvent.initialize());
    });
    final _debouncer = Debouncer(milliseconds: 500);

    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(//crossAxisAlignment: CrossAxisAlignment.end,
          children: [
        CupertinoSearchTextField(
          backgroundColor: Colors.grey.withOpacity(0.4),
          prefixIcon: const Icon(CupertinoIcons.search, color: Colors.grey),
          suffixIcon: const Icon(
            CupertinoIcons.xmark_circle_fill,
            color: Colors.grey,
          ),
          style: const TextStyle(color: Colors.white),
          onChanged: (value) {
            //---------------------------------->>api call to search for movies!!

            _debouncer.run(() {
              BlocProvider.of<SearchBloc>(context)
                  .add(SearchEvent.searchMovie(searchQuery: value));
            });
          },
        ),
        kheight,
        //--------------------------------------->>SearchBloc here

        Expanded(child: BlocBuilder<SearchBloc, SearchState>(
          builder: (context, state) {
            if (state.searchResultList.isEmpty) {
              return const SearchIdleWidget();
            } else {
              return const SearchResultWidget();
            }
          },
        ))
      ]),
    );
  }
}
