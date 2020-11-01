import 'package:auto_route/auto_route_annotations.dart';

import '../cart/screens/cart_page.dart';
import '../home/screens/home_screen.dart';
import '../order/screens/order_screen.dart';

@AdaptiveAutoRouter(
  routes: <AutoRoute>[
    AdaptiveRoute(page: HomeScreen),
    AdaptiveRoute(page: OrderScreen, initial: true),
    AdaptiveRoute(page: CartPage),
  ],
)
class $AppRouter {}
