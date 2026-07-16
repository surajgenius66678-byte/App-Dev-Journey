import 'package:flutter/material.dart';

class MyColors extends ThemeExtension<MyColors>{
  final Color? buttonColor;
  final Color? accentColor;
  final Color? textColor ;

  MyColors({ this.buttonColor, this.accentColor,this.textColor});
  
  @override
  MyColors copyWith({Color?buttonColor,Color?accentColor,Color ? textColor}){
    return MyColors(
      buttonColor: buttonColor ?? this.buttonColor,
      accentColor: accentColor ?? this.accentColor,
      textColor: textColor ?? this.textColor,
    );
  }
  
  @override
  MyColors lerp (ThemeExtension<MyColors>?other,double t){
    if(other is! MyColors)return this;
    return MyColors(
      buttonColor: Color.lerp(buttonColor, other.buttonColor, t),
      accentColor: Color.lerp(accentColor, other.accentColor, t),
      textColor: Color.lerp(textColor, other.textColor, t),
    );
  }
  

}