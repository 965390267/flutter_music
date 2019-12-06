import 'package:flutter/material.dart';
import 'package:music/components/home/itemAvator.dart';
import 'package:music/models/heroSimple.dart';

class HeroItem extends StatelessWidget{
 final HeroSimple data;
HeroItem({Key key,this.data}):super(key:key);
  @override
  Widget build(BuildContext context){
    return InkWell(
       onTap: (){
         Navigator.pushNamed(context,'heroDetail',arguments: 'ashe');
       },
       child: Container(
         decoration: ShapeDecoration(
           shape: RoundedRectangleBorder(
             borderRadius: BorderRadius.all(
               Radius.circular(10.0),
             )
           ),
           color: Colors.grey[50],
           shadows: [
             BoxShadow(
               color: Colors.grey.withOpacity(0.3),
               offset: Offset(0, 0),
               blurRadius: 6.0,
               spreadRadius: 0.0
             )
           ],
         ),
         margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
         padding: EdgeInsets.only(left: 20),
         height: 100,
         child:Row(
           mainAxisAlignment: MainAxisAlignment.start,
           children: <Widget>[
             HeroItemAvatar(
              img: 'https://www.demaxiya.com/v4/heroimg/bowmaster.jpg'),
             SizedBox(
               width: 20,
             ),
            Column(
           mainAxisAlignment: MainAxisAlignment.center,
           crossAxisAlignment: CrossAxisAlignment.start,
           children: <Widget>[
             Text("寒冰射手",style:TextStyle(fontSize: 16)),
             Text('艾希'),
             Text('ashe'),
             RichText(
               text: TextSpan(
                 style: DefaultTextStyle.of(context).style,
                 children:[
                   TextSpan(
                     text: '射手 ',
                     style: TextStyle(color: Colors.green)
                   ),
                   TextSpan(
                     text: '辅助',
                     style: TextStyle(color: Colors.green)
                   )
                 ]
               ),
             )
           ],
         ) ,
           ],
         )
       ),
    );
  }
}