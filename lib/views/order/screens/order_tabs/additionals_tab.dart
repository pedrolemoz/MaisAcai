import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

import '../../../../controllers/controllers.dart';
import '../../../ui_components/ui_components.dart';

class AdditionalsTab extends StatelessWidget {
  AdditionalsTab({@required this.tabController});

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
                    'Escolha os adicionais',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  Text(
                    'Escolha até três ingredientes',
                    style: Theme.of(context)
                        .textTheme
                        .subtitle1
                        .copyWith(color: Color(0xFF5E6163)),
                  ),
                ],
              ),
            ),
            GridView.builder(
              key: PageStorageKey('additionals_tab'),
              itemCount: _storeDataController.additionals.length,
              physics: BouncingScrollPhysics(),
              padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
              ),
              itemBuilder: (context, index) {
                var additional =
                    _storeDataController.additionals.elementAt(index);

                return Observer(builder: (_) {
                  return GradientCard(
                    component: additional,
                    isActive:
                        _cartController.tempAdditionals.contains(additional),
                    onTap: () => _cartController.toggleAdditional(
                        additional: additional),
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
            label: 'Adicionar ao carrinho',
            isActive: _cartController.hasBowl &&
                _cartController.hasAtLeastOneFlavor &&
                _cartController.hasAtLeastOneAdditional,
            onTap: () {},
          );
        }),
      ],
    );
  }
}
