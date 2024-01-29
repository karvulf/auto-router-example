import 'package:auto_route/auto_route.dart';
import 'package:auto_route_example/model/nested_home_object.dart';
import 'package:auto_route_example/screens/home/home_screen.dart';
import 'package:auto_route_example/screens/news/news/news_screen.dart';
import 'package:auto_route_example/screens/news/news_article/news_article_screen.dart';
import 'package:auto_route_example/screens/news/news_location.dart';
import 'package:auto_route_example/screens/news_blog/news_blog/news_blog_screen.dart';
import 'package:auto_route_example/screens/news_blog/news_blog_entry/news_blog_entry_screen.dart';
import 'package:auto_route_example/screens/news_blog/news_blog_location.dart';
import 'package:auto_route_example/screens/user/user_screen.dart';
import 'package:flutter/material.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: HomeRoute.page,
          initial: true,
          maintainState: true,
          children: [
            // tab 1
            AutoRoute(
              page: NewsLocationRoute.page,
              path: 'news',
              maintainState: true,
              children: [
                AutoRoute(
                  path: '',
                  title: (_, __) => '',
                  maintainState: true,
                  page: NewsRoute.page,
                ),
                AutoRoute(
                  path: 'article',
                  title: (_, __) => 'Artikel Kaka',
                  maintainState: true,
                  page: NewsArticleRoute.page,
                ),
              ],
            ),
            // tab 2
            AutoRoute(
              path: 'user',
              page: UserRoute.page,
            ),
          ],
        ),
        AutoRoute(
          page: NewsBlogLocationRoute.page,
          children: [
            AutoRoute(
              initial: true,
              page: NewsBlogRoute.page,
            ),
            AutoRoute(page: NewsBlogEntryRoute.page),
          ],
        ),
      ];
}
