import 'package:flutter/material.dart';
import 'package:start_app/extensions/my_colors.dart';

class ProjectTheme  {
  ProjectTheme._();
  static final lightTheme = ThemeData(
    textTheme: const TextTheme(bodyLarge: TextStyle(color: Colors.lightBlue,fontSize: 20,fontWeight: FontWeight.bold)),
    
    appBarTheme: const AppBarTheme(backgroundColor:Colors.white ),        
      primaryColor: Colors.red,
      extensions: <ThemeExtension<dynamic>>[ MyColors.light]);

  static final darkTheme = ThemeData(primaryColor: Colors.black, textTheme: 
    TextTheme(bodyLarge: TextStyle(color: Colors.blue[800]!,fontSize: 20,fontWeight: FontWeight.bold)),
   appBarTheme: const AppBarTheme(backgroundColor:Colors.grey ),
   extensions: <ThemeExtension<dynamic>>[ MyColors.dark]);
}