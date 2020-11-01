import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_it/get_it.dart';
import 'package:mais_acai/controllers/controllers.dart';

import 'views/navigation/router.gr.dart';
import 'views/theme/app_theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  registerSingletons();
  runApp(MaisAcai());
}

void registerSingletons() {
  var getIt = GetIt.I;

  getIt.registerSingleton<StoreDataController>(StoreDataController());
  getIt.registerSingleton<CartController>(CartController());
  getIt.registerSingleton<HomeController>(HomeController());
}

class MaisAcai extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Color(0xFFF5F8FC),
      statusBarIconBrightness: Brightness.dark,
    ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: appTheme,
      onGenerateRoute: AppRouter(),
    );
  }
}
