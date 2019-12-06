
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
//toast封装
class FToast{
  final String msg;
  final Toast length;
  final ToastGravity center;
  final int timeinsecforios;
  final Color bgcolor;
  final Color textcolor;
  FToast(this.msg,{this.length=Toast.LENGTH_SHORT,this.center=ToastGravity.CENTER,this.timeinsecforios=1,this.bgcolor= Colors.black26,this.textcolor=Colors.white}){  

   Fluttertoast.showToast(
        msg: msg,
        toastLength:length,
        gravity: center,
        timeInSecForIos:timeinsecforios,
        backgroundColor:this.bgcolor,
        textColor: this.textcolor
             );
  } 
}
