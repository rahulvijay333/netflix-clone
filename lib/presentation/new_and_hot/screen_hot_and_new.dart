import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/core/common/constants.dart';
import 'package:netflix_clone/presentation/new_and_hot/widget/comming_soon.dart';
import 'package:netflix_clone/presentation/new_and_hot/widget/everyones_watching.dart';

class ScreenHotAndNew extends StatelessWidget {
  const ScreenHotAndNew({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(90),
            child: AppBar(
              title: const Text(
                'New & Hot',
                style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              actions: [
                const Icon(
                  Icons.cast,
                  color: Colors.white,
                  size: 30,
                ),
                kwidth,
                Center(
                  child: Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.blue.withOpacity(0.5)),
                    child: const Icon(
                      Icons.face,
                      color: Colors.white,
                    ),
                  ),
                ),
                kwidth
              ],
              bottom: TabBar(
                  isScrollable: true,
                  labelStyle: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold),
                  labelPadding: const EdgeInsets.all(8),
                  
                  unselectedLabelColor: kwhiteColor,
                  dividerColor: Colors.transparent,
                  labelColor: Colors.black,
                  indicator: BoxDecoration(
                      color: kwhiteColor.withOpacity(0.8),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(8))),
                  tabs: const [
                    Text(
                      "🍿 Coming soon ",style:  TextStyle(
                      fontSize: 14),
                    ),
                    Text(
                      "👀 Everyone's watching ",style:  TextStyle(
                      fontSize: 14),
                    )
                  ]),
            ),
          ),
          body: const TabBarView(
              children: [ComingSoonWidget(), EveryonesWatchingWidget()])),
    );
  }
}
