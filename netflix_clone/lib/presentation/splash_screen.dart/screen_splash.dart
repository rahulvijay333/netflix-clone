import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_clone/application/downloads/downloads_bloc.dart';
import 'package:netflix_clone/presentation/main_page/screen_main.dart';

class ScreenSplash extends StatefulWidget {
  const ScreenSplash({super.key});

  @override
  State<ScreenSplash> createState() => _ScreenSplashState();
}

class _ScreenSplashState extends State<ScreenSplash> {
  @override
  void initState() {
    super.initState();

    gotohomePage();
  }

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<DownloadsBloc>(context)
        .add(const DownloadsEvent.getDownloadsImage());

    return Scaffold(
      body: Center(
        child: Container(
          decoration: const BoxDecoration(image: DecorationImage(image: AssetImage('assets/logo.png'))),
        ),
      ),
    );
  }

  void gotohomePage() async {
    await Future.delayed(const Duration(seconds: 5));

    Navigator.of(context).pushReplacement(MaterialPageRoute(
      builder: (ctx) {
        return const ScreenMain();
      },
    ));
  }
}
