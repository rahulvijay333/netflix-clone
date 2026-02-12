import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/colors.dart';

ValueNotifier<int> indexChangeNotifier = ValueNotifier(0);

class MainBottomNavigationBar extends StatelessWidget {
  const MainBottomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: indexChangeNotifier,
      builder: (ctx, int newIndex, _) {
        return BottomNavigationBar(
            unselectedFontSize: 10,
            currentIndex: newIndex,
            onTap: (index) {
              indexChangeNotifier.value = index;
              //--------------------------------------------delete
              print(indexChangeNotifier.value);
            },
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.grey,
            backgroundColor: backgroundColor,
            selectedIconTheme: const IconThemeData(
              color: Colors.white,
            ),
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.new_releases),
                label: 'New & Hot',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.emoji_emotions),
                label: 'FastLaughs',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: 'search',
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.download), label: 'Downloads')
            ]);
      },
    );
  }
}
