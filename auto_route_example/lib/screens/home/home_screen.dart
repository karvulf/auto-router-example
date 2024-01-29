import 'package:auto_route/auto_route.dart';
import 'package:auto_route_example/navigator/app_router.dart';
import 'package:flutter/material.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        NewsRoute(),
        UserRoute(),
      ],
      transitionBuilder: (context, child, animation) => FadeTransition(
        opacity: animation,
        child: child,
      ),
      bottomNavigationBuilder: (context, tabsRouter) {
        return BottomNavigationBar(
          currentIndex: tabsRouter.activeIndex,
          onTap: (index) {
            tabsRouter.setActiveIndex(index);
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.article),
              label: 'News',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.article),
              label: 'User',
            ),
          ],
        );
      },
    );
  }
}
