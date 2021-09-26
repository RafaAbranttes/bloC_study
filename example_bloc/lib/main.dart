import 'package:example_bloc/screens/bloc/home_bloc.dart';
import 'package:example_bloc/screens/bloc/home_event.dart';
import 'package:example_bloc/screens/bloc/home_state.dart';
import 'package:example_bloc/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider<HomeBloc>(
        create: (BuildContext context) => HomeBloc(
          HomeLoadingState(),
        )..add(HomeFetchList()),
        child: HomeScreen(),
      ),
    );
  }
}
