import 'package:music/models/heroSimple.dart';
import 'package:music/request/dio/http.dart';

class Http{
  static Future<HeroSimple> getHeroList( String phone, String password) async {
    var response = await HttpUtil().post('/login/cellphone',data:{
      'phone': phone,
      'password': password,
    });

    return HeroSimple.fromJson(response.data);
  }
  //to do
}