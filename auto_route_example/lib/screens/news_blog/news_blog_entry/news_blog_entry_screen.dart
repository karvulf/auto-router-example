import 'package:auto_route/annotations.dart';
import 'package:auto_route_example/bloc/counter/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class NewsBlogEntryScreen extends StatelessWidget {
  const NewsBlogEntryScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final state = context.watch<CounterBlogBloc>().state;

    return Scaffold(
      appBar: AppBar(
        title: const Text('NewsBlogEntryScreen'),
      ),
      body: Column(
        children: [
          Text('Aktueller Counter ${state.counter}'),
          const Text('Das ist ein sehr interessanter Blog Eintrag'),
          ElevatedButton(
            onPressed: () {
              context.read<CounterBlogBloc>().add(CounterIncreaseEvent());
            },
            child: const Text('Increase counter'),
          ),
        ],
      ),
    );
  }
}
