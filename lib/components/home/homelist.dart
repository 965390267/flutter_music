import 'package:flutter/material.dart';
import 'package:music/components/home/listitem.dart';
import 'package:music/models/heroSimple.dart';
class HomeList extends StatefulWidget{
  final List data;
HomeList({Key key,this.data}):super(key:key);
@override
_HomeListState  createState()=>_HomeListState();
}

class _HomeListState extends State<HomeList>with AutomaticKeepAliveClientMixin{
  @override
  bool get wantKeepAlive=>true;
  @override
  Widget build(BuildContext context){
    super.build(context);
    return Container(
      padding:  EdgeInsets.symmetric(vertical: 5),
      child:Scrollbar(
        child:  ListView.builder(
          scrollDirection: Axis.vertical,
        itemCount: 10,
        itemBuilder: (BuildContext context,int index){
           return HeroItem(data:HeroSimple.fromJson(widget.data[index]));
        },
      ),
      )
    );
  }
}

