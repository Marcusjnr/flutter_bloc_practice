import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

@immutable
class HomeState extends Equatable{
  final String changeHomeText;
  final bool isLoading;

  HomeState({
    this.changeHomeText,
    this.isLoading
  });

  List<dynamic> get props => [changeHomeText, isLoading];

  factory HomeState.textChange(String newText){
    return HomeState(
      changeHomeText: newText
    );
  }

  factory HomeState.setIsLoading(bool isLoadingGotten){
    return HomeState(
      isLoading: isLoadingGotten
    );
  }
}