import 'package:auto_route/auto_route.dart';
import 'package:auto_route_example/bloc/counter/counter_bloc.dart';
import 'package:auto_route_example/model/nested_home_object.dart';
import 'package:auto_route_example/navigator/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class NewsArticleScreen extends StatelessWidget {
  final DateTime currentDate;
  final String name;
  final NestedHomeObject nestedHomeObject;

  const NewsArticleScreen({
    required this.currentDate,
    required this.name,
    required this.nestedHomeObject,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final state = context.watch<CounterNewsBloc>().state;

    return Scaffold(
      appBar: AppBar(
        title: const Text('News article'),
      ),
      body: Column(
        children: [
          Text('Aktueller Counter ${state.counter}'),
          Text('Name is $name'),
          Text('Current date is $currentDate'),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text('Is nested ${nestedHomeObject.isNested}'),
                Text('Name of nested object ${nestedHomeObject.name}'),
                ElevatedButton(
                  onPressed: () {
                    context.read<CounterNewsBloc>().add(CounterIncreaseEvent());
                  },
                  child: const Text('Increase counter'),
                ),
                ElevatedButton(
                  onPressed: () {
                    context.router.root.push(
                      const NewsBlogLocationRoute(),
                    );
                  },
                  child: const Text('Zeig mir den Blog'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
