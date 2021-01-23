

import 'package:flutter/material.dart';
import 'package:flutter_app_bloc_update_theme/ui/global/theme/bloc/app_themes.dart';
import 'package:flutter_app_bloc_update_theme/ui/global/theme/bloc/theme_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PreferencePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Preferences'),
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(8),
          itemCount: AppTheme.values.length,
          itemBuilder: (context,index){
            final itemAppTheme = AppTheme.values[index];
            return Card(
              color: appThemeData[itemAppTheme].primaryColor,
              child: ListTile(
                title: Text(
                  itemAppTheme.toString(),
                  style: appThemeData[itemAppTheme].textTheme.bodyText1,
                ),
                onTap: (){
                  //发送事件
                  BlocProvider.of<ThemeBloc>(context).add(
                    ThemeChanged(theme: itemAppTheme),
                  );
                },
              ),
            );
          }
      ),
    );
  }
}