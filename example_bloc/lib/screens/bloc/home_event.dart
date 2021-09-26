import 'package:equatable/equatable.dart';

class HomeEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class HomeFetchList extends HomeEvent {}

class HomeFetchListError extends HomeEvent {}

class HomeFetchListEmptyList extends HomeEvent {}
