import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_clone/application/downloads/downloads_bloc.dart';

import 'package:netflix_clone/core/common/widgets/custom_app_bar.dart';

import 'package:netflix_clone/presentation/downloads/widget/section_1.dart';
import 'package:netflix_clone/presentation/downloads/widget/section_2.dart';
import 'package:netflix_clone/presentation/downloads/widget/section_3.dart';

class ScreenDownloads extends StatelessWidget {
  const ScreenDownloads({super.key});

  @override
  Widget build(BuildContext context) {
    final widgets = [const SmartDownloads(), Section2(), const Section3()];

    return SafeArea(
        child: Scaffold(
            appBar: const PreferredSize(
                child: AppBarWidgetCustom(
                  title: 'Downloads',
                ),
                preferredSize: Size.fromHeight(50)),
            //----------------body
            body: ListView.separated(
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                padding: const EdgeInsets.all(15),
                itemBuilder: (context, index) {
                  return widgets[index];
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(
                    height: 25,
                  );
                },
                itemCount: widgets.length)));
  }
}
