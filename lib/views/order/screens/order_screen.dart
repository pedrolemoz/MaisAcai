import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_icons/flutter_icons.dart';

import 'order_tabs/additionals_tab.dart';
import 'order_tabs/bowls_tab.dart';
import 'order_tabs/flavors_tab.dart';

class OrderScreen extends StatefulWidget {
  @override
  OrderScreenState createState() => OrderScreenState();
}

class OrderScreenState extends State<OrderScreen>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 3);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.light,
        centerTitle: true,
        backgroundColor: Theme.of(context).backgroundColor,
        elevation: 0.0,
        title: Text(
          'Faça o seu pedido',
          style: Theme.of(context)
              .textTheme
              .headline5
              .copyWith(color: Theme.of(context).primaryColor),
        ),
        leading: GestureDetector(
          onTap: () => ExtendedNavigator.root.maybePop(),
          child: Icon(
            FlutterIcons.arrow_left_fea,
            color: Theme.of(context).primaryColor,
            size: 28.0,
          ),
        ),
      ),
      body: Scaffold(
        appBar: TabBar(
          controller: _tabController,
          labelColor: Theme.of(context).primaryColor,
          labelStyle: Theme.of(context).textTheme.headline6,
          unselectedLabelColor: Color(0xFF5E6163),
          indicatorColor: Theme.of(context).primaryColor,
          labelPadding: EdgeInsets.all(10.0),
          isScrollable: false,
          tabs: [
            Text('Tamanho'),
            Text('Sabores'),
            Text('Adicionais'),
          ],
        ),
        body: TabBarView(
          children: [
            BowlsTab(tabController: _tabController),
            FlavorsTab(tabController: _tabController),
            AdditionalsTab(tabController: _tabController),
          ],
          controller: _tabController,
        ),
      ),
    );
  }
}
