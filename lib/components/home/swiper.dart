import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
 class SwiperBanner  extends StatelessWidget {
  @override
  Widget build(BuildContext context){
      return  Container(
        height: 120,
        child: new Swiper(
        itemBuilder: (BuildContext context,int index){
          return new Image.network("http://img.zangzhihong.com/background1.jpg",fit: BoxFit.fill,);
        },
        itemCount: 3,
         viewportFraction: 0.85,
        scale: 0.9,
        pagination: new SwiperPagination(
          builder: DotSwiperPaginationBuilder(size: 6,activeSize: 8,activeColor: Colors.orangeAccent
        ),
      
      ),
      autoplay: true,
      autoplayDelay: 10000,
      onTap: (int index){
        print(index);
      },
      )
    );
  }
}

