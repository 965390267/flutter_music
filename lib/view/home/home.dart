import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
 class HomeView  extends StatefulWidget {
  @override
  HomeViewState createState() => HomeViewState();
}

class HomeViewState extends State<HomeView> with AutomaticKeepAliveClientMixin {
  Widget getPic(int index){
   return Image.network('http://img.zangzhihong.com/background${index}.jpg',width: 320.0,height:50,fit: BoxFit.contain,);
  }
 @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
super.build(context);
       List<Widget> con=List();
        for (var i = 0; i < 1000; i++) {
        con.add(Tab(text:"$i"));
        }
    return Scaffold(
      appBar: AppBar(
        title: Text('主页'),
      ),
      body:Container(
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
    )
    );
  }
}

class HomeViewbak extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //因为本路由没有使用Scaffold，为了让子级Widget(如Text)使用
    //Material Design 默认的样式风格,我们使用Material作为本路由的根。
    return Material(
      child: CustomScrollView(
        slivers: <Widget>[
          //AppBar，包含一个导航栏
          SliverAppBar(
            pinned: true,
            expandedHeight: 250.0,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text('Demo'),
              background: Image.network(
                "http://img.zangzhihong.com/background1.jpg", fit: BoxFit.cover,),
            ),
          ),

          SliverPadding(
            padding: const EdgeInsets.all(8.0),
            sliver: new SliverGrid( //Grid
              gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, //Grid按两列显示
                mainAxisSpacing: 10.0,
                crossAxisSpacing: 10.0,
                childAspectRatio: 4.0,
              ),
              delegate: new SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                  //创建子widget      
                  return new Container(
                    alignment: Alignment.center,
                    color: Colors.cyan[100 * (index % 9)],
                    child: new Text('grid item $index'),
                  );
                },
                childCount: 20,
              ),
            ),
          ),
          //List
          new SliverFixedExtentList(
            itemExtent: 50.0,
            delegate: new SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                  //创建列表项      
                  return new Container(
                    alignment: Alignment.center,
                    color: Colors.lightBlue[100 * (index % 9)],
                    child: new Text('list item $index'),
                  );
                },
                childCount: 50 //50个列表项
            ),
          ),
        ],
      ),
    );
  }
}