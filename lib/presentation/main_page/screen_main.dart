import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/presentation/downloads/screen_downloads.dart';
import 'package:netflix_clone/presentation/fast_laughs/screen_fast_laughs.dart';
import 'package:netflix_clone/presentation/home/screen_home.dart';
import 'package:netflix_clone/presentation/main_page/widget/nav_bar.dart';
import 'package:netflix_clone/presentation/new_and_hot/screen_hot_and_new.dart';
import 'package:netflix_clone/presentation/search/screen_search.dart';

class ScreenMain extends StatelessWidget {
  const ScreenMain({super.key});

  final _pages = const [
    ScreenHome(),
    ScreenHotAndNew(),
    ScreenFastLaughs(),
    ScreenSearch(),
    ScreenDownloads()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: indexChangeNotifier,
          builder: (ctx, int newindex, _) {
            return _pages[newindex];
          },
        ),
      ),
      bottomNavigationBar: const MainBottomNavigationBar(),
    );
  }
}
