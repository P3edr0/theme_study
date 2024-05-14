import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MyColors extends ThemeExtension<MyColors>{
  MyColors({required this.failure,required this.sucess});
final Color ? sucess;
final Color ? failure;

  @override
  ThemeExtension<MyColors> copyWith({Color ?sucess, Color ? failure}) {
return MyColors(failure: failure?? this.failure, sucess: sucess?? this.sucess);
  }

  @override
  ThemeExtension<MyColors> lerp( ThemeExtension<MyColors>? other, double t) {

    if(other is! MyColors) return this;

    return MyColors(failure: Color.lerp(failure, other.failure, t), sucess: Color.lerp(sucess, other.sucess, t));
      }

@override
String toString() {
    return 'My colors is sucess:$sucess and failure: $failure';
  }
  static final light = MyColors(failure: Colors.orange, sucess: Colors.blue);
  static final dark = MyColors(failure: Colors.red[800], sucess: Colors.green[800]);

}