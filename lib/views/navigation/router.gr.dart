// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';

import '../cart/screens/cart_page.dart';
import '../home/screens/home_screen.dart';
import '../order/screens/order_screen.dart';

class Routes {
  static const String homeScreen = '/home-screen';
  static const String orderScreen = '/';
  static const String cartPage = '/cart-page';
  static const all = <String>{
    homeScreen,
    orderScreen,
    cartPage,
  };
}

class AppRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.homeScreen, page: HomeScreen),
    RouteDef(Routes.orderScreen, page: OrderScreen),
    RouteDef(Routes.cartPage, page: CartPage),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    HomeScreen: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => HomeScreen(),
        settings: data,
      );
    },
    OrderScreen: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => OrderScreen(),
        settings: data,
      );
    },
    CartPage: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => CartPage(),
        settings: data,
      );
    },
  };
}
