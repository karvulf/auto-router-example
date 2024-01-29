import 'package:auto_route/auto_route.dart';
import 'package:auto_route_example/navigator/app_router.dart';
import 'package:flutter/material.dart';

@RoutePage()
class UserScreen extends StatefulWidget {
  const UserScreen({super.key});

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UserScreen'),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              setState(() {
                counter++;
              });
            },
            child: const Text('Increase counter'),
          ),
          Text('Current counter: $counter'),
          ElevatedButton(
            onPressed: () {
              context.router.push(const HomeRoute());
            },
            child: const Text('Navigate to HomeScreen'),
          ),
        ],
      ),
    );
  }
}
