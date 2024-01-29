import 'package:auto_route/auto_route.dart';
import 'package:auto_route_example/bloc/counter/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage(name: 'NewsBlogLocationRoute')
class NewsBlogLocation extends StatelessWidget {
  const NewsBlogLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CounterBlogBloc(),
      child: const AutoRouter(),
    );
  }
}
