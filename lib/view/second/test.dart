import 'dart:math';

import 'package:flutter/material.dart';

class Second extends StatefulWidget {
  @override
  _SecondState createState() => _SecondState();
}
Widget avator=Image.network('http://img.zangzhihong.com/background1.jpg',width: 100.0,height:50,fit: BoxFit.contain,);
class _SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      child:Column(
      
        children: <Widget>[
          Flex(
            direction: Axis.horizontal,
           children: <Widget>[
             Expanded(
               flex: 1,
               child: Container(height: 30.0,color: Colors.red,),
             ),
             Expanded(
               flex: 1,
               child: Container(
                 height: 30.0,
                 color: Colors.black,
               ),
             )
           ],
          ),
          
         ConstrainedBox(
           constraints: BoxConstraints(
             minWidth: double.infinity,
             minHeight: 50.0
           ),
           child: Container(
             height: 82.0,
             child: DecoratedBox(
               decoration: BoxDecoration(color: Colors.red,gradient: LinearGradient(
                 colors: [Colors.red,Colors.orange[700]]
               ),boxShadow: [BoxShadow(
                 color: Colors.black54,
                 offset: Offset(2.0, 2.0),
                 blurRadius: 18.0
               )]),
             ),
           ),
         ),
         Column(
           mainAxisSize: MainAxisSize.max,
children: <Widget>[
//   avator,
//   ClipOval(child:avator,clipBehavior: Clip.antiAlias,),
//   ClipRRect(
// borderRadius: BorderRadius.circular(5.0),
//     child: avator,
//   ),

      
],
         ),
 
         
      //     Center(
      //   child: CustomPaint(
      //     size: Size(300, 300),
      //     painter: MyPainter(),
      //   ),
      // )
        ],
      )
    );
  }
}
class Strem extends StatefulWidget{
  @override
  StremState createState()=>StremState();
}
class StremState extends State<Strem>{
   double _top = 0.0; //距顶部的偏移
  double _left = 0.0;//距左边的偏移

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      overflow: Overflow.clip,
      children: <Widget>[
        Positioned(
          top: _top,
          left: _left,
          child: GestureDetector(
            child: CircleAvatar(child: Text("A")),
            //手指按下时会触发此回调
            onPanDown: (DragDownDetails e) {
              //打印手指按下的位置(相对于屏幕)
              print("用户手指按下：${e.globalPosition}");
            },
            //手指滑动时会触发此回调
            onPanUpdate: (DragUpdateDetails e) {
              //用户手指滑动时，更新偏移，重新构建
              setState(() {
                _left += e.delta.dx;
                _top += e.delta.dy;
              });
            },
            onPanEnd: (DragEndDetails e){
              //打印滑动结束时在x、y轴上的速度
              print(e.velocity);
            },
          ),
        )
      ],
    );
  }
// Stream<int> counter() {
//   return Stream.periodic(Duration(seconds: 1), (i) {
//     return i;
//   });
// }
// Widget build(BuildContext context) {
//     return StreamBuilder<int>(
//       stream: counter(), //
//       //initialData: ,// a Stream<int> or null
//       builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
//         if (snapshot.hasError)
//           return Text('Error: ${snapshot.error}');
//         switch (snapshot.connectionState) {
//           case ConnectionState.none:
//             return Text('没有Stream');
//           case ConnectionState.waiting:
//             return Text('等待数据...');
//           case ConnectionState.active:
//             return Text('active: ${snapshot.data}');
//           case ConnectionState.done:
//             return Text('Stream已关闭');
//         }
//         return null; // unreachable
//       },
//     );
//  }
}
class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    double eWidth = size.width / 15;
    double eHeight = size.height / 15;

    //画棋盘背景
    var paint = Paint()
      ..isAntiAlias = true
      ..style = PaintingStyle.fill //填充
      ..color = Color(0x77cdb175); //背景为纸黄色
    canvas.drawRect(Offset.zero & size, paint);

    //画棋盘网格
    paint
      ..style = PaintingStyle.stroke //线
      ..color = Colors.black87
      ..strokeWidth = 1.0;

    for (int i = 0; i <= 15; ++i) {
      double dy = eHeight * i;
      canvas.drawLine(Offset(0, dy), Offset(size.width, dy), paint);
    }

    for (int i = 0; i <= 15; ++i) {
      double dx = eWidth * i;
      canvas.drawLine(Offset(dx, 0), Offset(dx, size.height), paint);
    }

    //画一个黑子
    paint
      ..style = PaintingStyle.fill
      ..color = Colors.black;
    canvas.drawCircle(
      Offset(size.width / 2 - eWidth / 2, size.height / 2 - eHeight / 2),
      min(eWidth / 2, eHeight / 2) - 2,
      paint,
    );

    //画一个白子
    paint.color = Colors.white;
    canvas.drawCircle(
      Offset(size.width / 2 + eWidth / 2, size.height / 2 - eHeight / 2),
      min(eWidth / 2, eHeight / 2) - 2,
      paint,
    );
  }

  //在实际场景中正确利用此回调可以避免重绘开销，本示例我们简单的返回true
  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}