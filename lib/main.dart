import 'package:bloc_counter/counter/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:bloc_counter/counter/counter_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc_counter/theme/theme_bloc.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (_) => ThemeBloc(),
    child: BlocBuilder<ThemeBloc, ThemeData>(
      builder: (_, theme) {
        return MaterialApp(
      title: 'Flutter Demo',
      home: BlocProvider<CounterBloc>(
        create: (context) => CounterBloc(),
        child: CounterPage(),
      ),
      theme: theme,
    );
      },
    ),
    );
  }
}