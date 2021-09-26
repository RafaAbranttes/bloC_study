import 'package:example_bloc/screens/bloc/home_event.dart';
import 'package:example_bloc/screens/bloc/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(HomeState initialState) : super(HomeLoadingState());

  @override
  Stream<HomeState> mapEventToState(HomeEvent event) async* {
    var state;
    switch (event.runtimeType) {
      case HomeFetchList:
        state = await _fecthList();
        break;
      default:
    }
    yield state;
  }

  Future<HomeState> _fecthList() async {
    var list = await Future.delayed(
      Duration(
        seconds: 3,
      ),
      () => <String>[
        'Item1',
        'Item1',
        'Item1',
        'Item1',
        'Item1',
        'Item1',
        'Item1',
        'Item1',
        'Item1',
        'Item1',
        'Item1',
        'Item1',
        'Item1',
        'Item1',
        'Item1',
        'Item1',
        'Item1',
        'Item1',
        'Item1',
      ],
    );

    return HomeStateLoaded(list: list);
  }
}
