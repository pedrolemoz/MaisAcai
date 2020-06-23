import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:mais_acai/pages/acai/tabs/bowls_tab.dart';
import 'package:mais_acai/pages/acai/tabs/flavors_tab.dart';

// TODO: Alimentar a lista com os itens reais

class AcaiAssembler extends StatefulWidget {
  static final routeID = 'acai_assembler';
  @override
  AcaiAssemblerState createState() => AcaiAssemblerState();
}

class AcaiAssemblerState extends State<AcaiAssembler>
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
          onTap: () {
            Navigator.pop(context);
          },
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
          unselectedLabelColor: Colors.grey[600],
          indicatorColor: Theme.of(context).primaryColor,
          labelPadding: EdgeInsets.all(10.0),
          isScrollable: true,
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
            Container(),
          ],
          controller: _tabController,
        ),
      ),
    );
  }
}
