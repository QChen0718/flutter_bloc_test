import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_bloc_update_theme/ui/global/theme/bloc/app_themes.dart';

part 'theme_event.dart';
part 'theme_state.dart';

//  ThemeEvent 输入的事件类型
//  ThemeState 输出的数据结果
// Bloc<ThemeEvent, ThemeState> 这里面的参数是一个泛型参数，可以是任意类型
//比如 Bloc<int,String> 也可以指定是int,string类型的参数
class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc(ThemeState initialState) : super(initialState);

  @override
  Stream<ThemeState> mapEventToState(
    //  传入的类型参数需要和定义的一致
    ThemeEvent event,
  ) async* {
    // TODO: implement mapEventToState
    if(event is ThemeChanged){
      // 发送事件的格式，来确定在外界调用的方式
      // 发送的事件类型也需要和定义的一致 
      yield ThemeState(themeData: appThemeData[event.theme]);
    }
  }


}
