import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:music/view/home/home.dart';
import 'package:music/view/main_page.dart';
import 'package:music/view/heroDetail.dart';
import 'package:music/view/splash/splash_page.dart';
import 'package:music/view/imagePreview.dart';


Handler splashHandle =Handler(
  handlerFunc: (BuildContext context,Map<String,List<String>> params){
   // String goodsId = params['id'].first;
   // print('index>details goodsID is ${goodsId}');
    return SplashPage();

  }
);

Handler mainPageHandle =Handler(
  handlerFunc: (BuildContext context,Map<String,List<String>> params){
    // String goodsId = params['id'].first;
    //print('index>details goodsID is ${goodsId}');
    return MainPage();

  }
);


Handler homeHanderl =Handler(
  handlerFunc: (BuildContext context,Map<String,List<String>> params){
   // String goodsId = params['id'].first;
    //print('index>details goodsID is ${goodsId}');
   return HomeView();

  }
);

Handler detailsHanderl =Handler(
  handlerFunc: (BuildContext context,Map<String,List<String>> params){
    // String goodsId = params['id'].first;
    //print('index>details goodsID is ${goodsId}');
    return HeroDetail(name:'goodsId');

  }
);


