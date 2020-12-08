import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

@immutable
abstract class HomeEvent extends Equatable{
}

class HomeChangedButtonPressed extends HomeEvent{
  final String textChange;

  HomeChangedButtonPressed(this.textChange);

  @override
  List<Object> get props => [textChange];

  @override
  String toString() => 'Changing Text';
}