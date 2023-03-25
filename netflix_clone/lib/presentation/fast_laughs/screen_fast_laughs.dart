import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:netflix_clone/application/fast_laughs/fast_laughs_bloc.dart';
import 'package:netflix_clone/presentation/fast_laughs/widget/video_item.dart';

 ValueNotifier<Set<int>> likedVideosNotifier = ValueNotifier({});
class ScreenFastLaughs extends StatelessWidget {
  const ScreenFastLaughs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<FastLaughsBloc>(context)
          .add(const FastLaughsEvent.initial());
    });

    return Scaffold(
        body: SafeArea(child: BlocBuilder<FastLaughsBloc, FastLaughsState>(
      builder: (context, state) {
        if (state.isLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state.isError) {
          return const Center(
            child: Text('Error while getting data'),
          );
        } else if (state.videoList.isEmpty) {
          return const Center(
            child: Text('List is Empty'),
          );
        }

        return PageView(
          scrollDirection: Axis.vertical,
          children: List.generate(
              state.videoList.length,
              (index) => VideoListItemInheritedWidget(
                  widget: VideoListItem(
                    index: index,
                  ),
                  movieData: state.videoList[index])),
        );
      },
    )));
  }
}
