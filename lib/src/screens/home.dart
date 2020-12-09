import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_practice/app/bloc/home_bloc/home_bloc.dart';
import 'package:flutter_bloc_practice/app/bloc/home_bloc/home_event.dart';
import 'package:flutter_bloc_practice/app/bloc/home_bloc/home_state.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<HomeBloc, HomeState>(
        cubit: BlocProvider.of<HomeBloc>(context),
        builder: (context, state){
          return Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  state.changeHomeText,
                ),

                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MaterialButton(
                          color: Colors.red,
                          textColor: Colors.white,
                          child: Text('Click me'),
                          onPressed: (){
                            BlocProvider.of<HomeBloc>(context).add(
                                HomeChangedButtonPressed('what is up')
                            );
                          }
                      ),

                      SizedBox(width: 10,),

                      MaterialButton(
                          color: Colors.red,
                          textColor: Colors.white,
                          child: Text('Click me second'),
                          onPressed: (){
                            BlocProvider.of<HomeBloc>(context).add(
                                HomeProgressBarButtonPressed(true)
                            );
                          }
                      ),
                    ],
                  ),
                ),

                state.isLoading
                ?
                CircularProgressIndicator()
                :
                Container()
              ],
            ),
          );
        },
      ),
    );
  }
}
