import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

@immutable
abstract class HomeEvent extends Equatable{
  HomeEvent([List props = const []]) : super();
}

class HomeChangedButtonPressed extends HomeEvent{
  final String textChange;

  HomeChangedButtonPressed(this.textChange);

  @override
  List<Object> get props => [textChange];

  @override
  String toString() => 'Changing Text';
}

class HomeProgressBarButtonPressed extends HomeEvent{
   final bool showIsLoading;

  HomeProgressBarButtonPressed(this.showIsLoading);

  @override
  List<Object> get props => [showIsLoading];


}