import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_practice/app/bloc/home_bloc/home_event.dart';
import 'package:flutter_bloc_practice/app/bloc/home_bloc/home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState>{

  HomeBloc() : super(HomeState.textChange('initial'));

  @override
  Stream<HomeState> mapEventToState(HomeEvent event) async*{
    if (event is HomeChangedButtonPressed) {
      yield HomeState.textChange(event.textChange);
    }else if(event is HomeProgressBarButtonPressed){
      yield HomeState.setIsLoading(event.showIsLoading);
    }
  }
}