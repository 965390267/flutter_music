import 'package:flutter/material.dart';
import 'package:music/utils/toast.dart';
import 'package:music/view/second/test.dart';
import 'package:music/view/testanimation/animation.dart';
import 'package:music/view/video/video.dart';

import 'home/home.dart';

class MainPage extends StatefulWidget{
    MainPage({Key key}) : super(key: key);
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<MainPage>with SingleTickerProviderStateMixin{
  DateTime _lastPressedAt;
  @override
  void initState() {  
    super.initState();
  }  
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Scaffold(
      // appBar: AppBar(
      //   title:Text('主页')
      // ),
      body: HomeView(),
    ),
    onWillPop:() async {
          if (_lastPressedAt == null ||
              DateTime.now().difference(_lastPressedAt) > Duration(seconds: 1)) {
            //两次点击间隔超过1秒则重新计时
           FToast('再次点击退出');

            _lastPressedAt = DateTime.now();
            return false;
          }
          return true;
        }
        );
  }
}
