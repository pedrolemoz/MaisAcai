import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:mais_acai/models/models.dart';

import '../../../../controllers/controllers.dart';
import '../../../ui_components/ui_components.dart';

class FlavorsTab extends StatelessWidget {
  FlavorsTab({@required this.tabController});

  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    final _storeDataController = GetIt.I.get<StoreDataController>();
    final _cartController = GetIt.I.get<CartController>();

    return Stack(
      children: <Widget>[
        ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(
                top: 15.0,
                bottom: 5.0,
                left: 15.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Escolha o sabor',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  Text(
                    'Escolha até duas combinações',
                    style: Theme.of(context)
                        .textTheme
                        .subtitle1
                        .copyWith(color: Color(0xFF5E6163)),
                  ),
                ],
              ),
            ),
            GridView.builder(
              key: PageStorageKey('flavors_tab'),
              itemCount: _storeDataController.flavors.length,
              physics: BouncingScrollPhysics(),
              padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
              ),
              itemBuilder: (context, index) {
                var flavor = _storeDataController.flavors.elementAt(index);

                return Observer(builder: (_) {
                  return GradientCard(
                    component: flavor,
                    isActive: _cartController.tempFlavors.contains(flavor),
                    onTap: () => _cartController.toggleFlavor(flavor: flavor),
                  );
                });
              },
            ),
            SizedBox(
              height: 70.0,
            ),
          ],
        ),
        Observer(builder: (_) {
          return BottomButtonBar(
            label: 'Continuar',
            isActive:
                _cartController.hasBowl && _cartController.hasAtLeastOneFlavor,
            onTap: () {
              tabController.index++;
              print(true);
            },
          );
        }),
      ],
    );
  }
}
