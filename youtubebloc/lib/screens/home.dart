import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:youtubebloc/blocs/videos_bloc.dart';
import 'package:youtubebloc/delegates/data_search.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        centerTitle: false,
        leadingWidth: 0,
        title: Transform(
          transform: Matrix4.translationValues(
              -MediaQuery.of(context).size.width * 0.2, 0.0, 0.0),
          child: Container(
            alignment: Alignment.centerLeft,
            height: 25,
            child: SvgPicture.asset("images/YouTube_Logo_2017.svg"),
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.black87,
        actions: [
          Align(
            alignment: Alignment.center,
            child: Text("0"),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.star),
          ),
          IconButton(
            onPressed: () async {
             String result = await showSearch(context: context, delegate: DataSearch());
             if(result != null){
               BlocProvider.of<VideosBloc>(context).inSearch.add(result);
             }
            },
            icon: Icon(Icons.search),
          ),
        ],
      ),
      backgroundColor: Colors.black87,
      body: Container(),
    );
  }
}
