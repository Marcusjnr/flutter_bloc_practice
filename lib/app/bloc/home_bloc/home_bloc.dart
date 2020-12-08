import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_practice/app/bloc/home_bloc/home_event.dart';
import 'package:flutter_bloc_practice/app/bloc/home_bloc/home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState>{

  HomeBloc() : super(null);
  @override
  Stream<HomeState> mapEventToState(HomeEvent event) async*{
    final HomeState currentState = state;
    yield HomeState.textChange('button pressed');
  }
}