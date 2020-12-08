import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

@immutable
class HomeState extends Equatable{
  final String changeHomeText;

  HomeState({
    this.changeHomeText
  });

  List<String> get props => [changeHomeText];

  factory HomeState.textChange(String newText){
    return HomeState(
      changeHomeText: newText
    );
  }
}