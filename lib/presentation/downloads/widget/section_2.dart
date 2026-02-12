import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_clone/application/downloads/downloads_bloc.dart';
import 'package:netflix_clone/core/common/constants.dart';
import 'package:netflix_clone/core/common/widgets/downloads_image_tile.dart';
import 'package:netflix_clone/core/string.dart';

class Section2 extends StatelessWidget {
  const Section2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //api call

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      BlocProvider.of<DownloadsBloc>(context)
          .add(const DownloadsEvent.getDownloadsImage());
    });

    //screen size
    final Size size = MediaQuery.of(context).size;

    return Column(
      children: [
        kheight,
        const Text(
          'Introducing Downloads for You',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        kheight,
        const Text(
          '''We'll download a personalised selection of\n movies and shows for you, so there's \nalways something to watch on your\n device''',
          style: TextStyle(color: Colors.grey, fontSize: 14),
          textAlign: TextAlign.center,
        ),
        kheight,
        // ------------------------------------------->bloc here<-----------------------------------------
        BlocBuilder<DownloadsBloc, DownloadsState>(
          builder: (context, state) {
            if (state.isloading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (state.isError) {
              return const Center(
                child: Text('Error white getting data'),
              );
            } else if (state.downloads.isEmpty) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            final firstImage = state.downloads[0];
            final secondImage = state.downloads[1];
            final thirdImage = state.downloads[2];
            return SizedBox(
              width: size.width,
              height: size.width * 0.9,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.grey.withOpacity(0.5),
                    radius: size.width * 0.30,
                  ),
                  DownloadsImageWidget(
                    size: Size(size.width * 0.7, size.height),
                    imageList: '$imageAppendUrl${firstImage.posterPath}',
                    margin:
                        const EdgeInsets.only(left: 170, bottom: 20, top: 30),
                    angle: 15,
                  ),
                  DownloadsImageWidget(
                    size: Size(size.width * 0.7, size.height),
                    imageList: '$imageAppendUrl${secondImage.posterPath}',
                    margin:
                        const EdgeInsets.only(right: 170, bottom: 20, top: 30),
                    angle: -15,
                  ),
                  DownloadsImageWidget(
                    size: Size(size.width * 0.8, size.height),
                    imageList: '$imageAppendUrl${thirdImage.posterPath}',
                    margin: const EdgeInsets.only(top: 25),
                    angle: 0,
                  )
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}
