import 'package:flutter/material.dart';

class HeroDetail extends StatefulWidget{
  final name;
 HeroDetail({Key key,this.name}):super(key:key);
  @override
  _HeroDetailState createState()=>_HeroDetailState();
}

class _HeroDetailState extends State <HeroDetail>{
  @override
  Widget build (BuildContext context){
   return Scaffold(
     appBar:  AppBar(
       title: Text(widget.name),
     ),
     body: Center(child: Text('detail'),),
   );
  }
}