import 'package:auto_route/auto_route.dart';
import 'package:auto_route_example/bloc/counter/counter_bloc.dart';
import 'package:auto_route_example/model/nested_home_object.dart';
import 'package:auto_route_example/navigator/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final state = context.watch<CounterNewsBloc>().state;

    return Scaffold(
      appBar: AppBar(
        title: const Text('NewsScreen'),
      ),
      body: Column(
        children: [
          Text('Aktueller Counter ${state.counter}'),
          ElevatedButton(
            onPressed: () {
              context.pushRoute(
                NewsArticleRoute(
                  currentDate: DateTime(01, 01, 2000),
                  name: 'Welcome to the past!',
                  nestedHomeObject: const NestedHomeObject(
                    isNested: true,
                    name: 'Nested home object is interesting!',
                  ),
                ),
              );
            },
            child: const Text('Navigate to nested screen with arguments'),
          ),
        ],
      ),
    );
  }
}
