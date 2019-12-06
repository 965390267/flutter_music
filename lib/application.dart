import 'package:fluro/fluro.dart';
import 'package:get_it/get_it.dart';
import 'package:music/router/navagate_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Application{
  static Router router;
    static SharedPreferences sp;
  static GetIt getIt = GetIt.instance;
    static initSp() async{
    sp = await SharedPreferences.getInstance();
  }

  static setupLocator(){
    getIt.registerSingleton(NavigateService());
  }
}