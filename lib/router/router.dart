import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import 'package:music/router/router_handler.dart';
class Routes{
  static String root='/';
  static String mainPage='/mainPage';
  static String heroDetail='/heroDetail';
  static String home='/home';
  static String imagePreview='/imagePreview';
  
   static void configureRoutes(Router router) {
 
    router.notFoundHandler = new Handler(
        handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      print("ROUTE WAS NOT FOUND !!!");
      //return LoginPage();
      return Center(child: Text('匹配不到路由返回某页逻辑'),);
    });
    /// 第一个参数是路由地址，第二个参数是页面跳转和传参，第三个参数是默认的转场动画，可以看上图
    /// 我这边先不设置默认的转场动画，转场动画在下面会讲，可以在另外一个地方设置（可以看NavigatorUtil类）
    router.define(root, handler: splashHandle);
     router.define(mainPage, handler: mainPageHandle);
    router.define(home, handler: homeHanderl);
    router.define(heroDetail, handler: detailsHanderl);
}
}