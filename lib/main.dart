import 'dart:async';
import 'dart:io';

import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:music/provider/theme.dart';
import 'package:provider/provider.dart';
import 'package:music/router/navagate_service.dart';
import 'package:music/router/router.dart';
import 'package:music/view/error_template/error_telempt.dart';

import 'application.dart';

Future<Null> main() async {
  FlutterError.onError = (FlutterErrorDetails details) async {
    //flutter异常上报，除了 Dart 异常，Flutter 也能抛出其他的异常，比如调用原生代码发生的平台异常。
    if (isInDebugMode) {
      FlutterError.dumpErrorToConsole(details);
    } else {
      Zone.current.handleUncaughtError(details.exception, details.stack);
    }
  };

  runZoned<Future<void>>(() async {
    Router router = Router();
    Routes.configureRoutes(router);
    Application.router = router;
    Application.setupLocator();
    setCustomErrorPage();
    runApp(MyApp()); //入口
    if (Platform.isAndroid) {
      //平台appbar设置
      SystemUiOverlayStyle systemUiOverlayStyle =
          SystemUiOverlayStyle(statusBarColor: Colors.transparent);
      SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
    }
  }, onError: (error, stackTrace) async {
    //捕获并上报 Dart 异常
    await _reportError(error, stackTrace);
  });
}

Future<Null> _reportError(dynamic error, dynamic stackTrace) async {
  // TODO错误日志上报逻辑
}

bool get isInDebugMode {
  // Assume you're in production mode.
  bool inDebugMode = false;

  // Assert expressions are only evaluated during development. They are ignored
  // in production. Therefore, this code only sets `inDebugMode` to true
  // in a development environment.
  assert(inDebugMode = true);

  return inDebugMode;
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    final initThemeData = ThemeData(
      //初始主题
      primaryColor: Colors.orange,
    );

    final initIndex = 4; //初始索引
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
            builder: (_) => ThemeState(initIndex, initThemeData))
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        navigatorKey: Application.getIt<NavigateService>().key,
        theme: ThemeData(
          brightness: Brightness.light,
          primaryColor: Colors.grey[100],
          accentColor: Colors.blueAccent,
          backgroundColor: Colors.grey[100],
          scaffoldBackgroundColor: Colors.grey[100],
        ),
        title: 'lol',
        onGenerateRoute: Application.router.generator,
      ),
    );
  }
}
