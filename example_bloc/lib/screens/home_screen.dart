import 'package:example_bloc/screens/bloc/home_bloc.dart';
import 'package:example_bloc/screens/bloc/home_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exemplo Bloc"),
      ),
      body: BlocBuilder<HomeBloc, HomeState>(
        bloc: BlocProvider.of<HomeBloc>(context),
        builder: (context, state) {
          if (state is HomeStateLoaded) {
            return ListView.builder(
              itemCount: 50,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text("Item $index"),
                );
              },
            );
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
