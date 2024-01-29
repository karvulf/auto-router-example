// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeScreen(),
      );
    },
    NewsArticleRoute.name: (routeData) {
      final args = routeData.argsAs<NewsArticleRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: NewsArticleScreen(
          currentDate: args.currentDate,
          name: args.name,
          nestedHomeObject: args.nestedHomeObject,
          key: args.key,
        ),
      );
    },
    NewsBlogEntryRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const NewsBlogEntryScreen(),
      );
    },
    NewsBlogLocationRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const NewsBlogLocation(),
      );
    },
    NewsBlogRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const NewsBlogScreen(),
      );
    },
    NewsLocationRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const NewsLocation(),
      );
    },
    NewsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const NewsScreen(),
      );
    },
    UserRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const UserScreen(),
      );
    },
  };
}

/// generated route for
/// [HomeScreen]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [NewsArticleScreen]
class NewsArticleRoute extends PageRouteInfo<NewsArticleRouteArgs> {
  NewsArticleRoute({
    required DateTime currentDate,
    required String name,
    required NestedHomeObject nestedHomeObject,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          NewsArticleRoute.name,
          args: NewsArticleRouteArgs(
            currentDate: currentDate,
            name: name,
            nestedHomeObject: nestedHomeObject,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'NewsArticleRoute';

  static const PageInfo<NewsArticleRouteArgs> page =
      PageInfo<NewsArticleRouteArgs>(name);
}

class NewsArticleRouteArgs {
  const NewsArticleRouteArgs({
    required this.currentDate,
    required this.name,
    required this.nestedHomeObject,
    this.key,
  });

  final DateTime currentDate;

  final String name;

  final NestedHomeObject nestedHomeObject;

  final Key? key;

  @override
  String toString() {
    return 'NewsArticleRouteArgs{currentDate: $currentDate, name: $name, nestedHomeObject: $nestedHomeObject, key: $key}';
  }
}

/// generated route for
/// [NewsBlogEntryScreen]
class NewsBlogEntryRoute extends PageRouteInfo<void> {
  const NewsBlogEntryRoute({List<PageRouteInfo>? children})
      : super(
          NewsBlogEntryRoute.name,
          initialChildren: children,
        );

  static const String name = 'NewsBlogEntryRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [NewsBlogLocation]
class NewsBlogLocationRoute extends PageRouteInfo<void> {
  const NewsBlogLocationRoute({List<PageRouteInfo>? children})
      : super(
          NewsBlogLocationRoute.name,
          initialChildren: children,
        );

  static const String name = 'NewsBlogLocationRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [NewsBlogScreen]
class NewsBlogRoute extends PageRouteInfo<void> {
  const NewsBlogRoute({List<PageRouteInfo>? children})
      : super(
          NewsBlogRoute.name,
          initialChildren: children,
        );

  static const String name = 'NewsBlogRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [NewsLocation]
class NewsLocationRoute extends PageRouteInfo<void> {
  const NewsLocationRoute({List<PageRouteInfo>? children})
      : super(
          NewsLocationRoute.name,
          initialChildren: children,
        );

  static const String name = 'NewsLocationRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [NewsScreen]
class NewsRoute extends PageRouteInfo<void> {
  const NewsRoute({List<PageRouteInfo>? children})
      : super(
          NewsRoute.name,
          initialChildren: children,
        );

  static const String name = 'NewsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [UserScreen]
class UserRoute extends PageRouteInfo<void> {
  const UserRoute({List<PageRouteInfo>? children})
      : super(
          UserRoute.name,
          initialChildren: children,
        );

  static const String name = 'UserRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
