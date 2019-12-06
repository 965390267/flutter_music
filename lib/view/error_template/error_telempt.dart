import 'package:flutter/material.dart';

void setCustomErrorPage(){
    ErrorWidget.builder = (FlutterErrorDetails flutterErrorDetails){
      print(flutterErrorDetails.toString());
      return Center(
        child: Text("Flutter 走神了"),
      );
    };
}