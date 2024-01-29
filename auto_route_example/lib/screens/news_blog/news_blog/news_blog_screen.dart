import 'package:auto_route/auto_route.dart';
import 'package:auto_route_example/bloc/counter/counter_bloc.dart';
import 'package:auto_route_example/navigator/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class NewsBlogScreen extends StatelessWidget {
  const NewsBlogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final state = context.watch<CounterBlogBloc>().state;

    return Scaffold(
      appBar: AppBar(
        title: const Text('NewsBlogScreen'),
      ),
      body: Column(
        children: [
          Text('Aktueller Counter ${state.counter}'),
          ElevatedButton(
            onPressed: () {
              context.pushRoute(const NewsBlogEntryRoute());
            },
            child: const Text('Zeig mir den Blog Eintrag!'),
          ),
        ],
      ),
    );
  }
}
