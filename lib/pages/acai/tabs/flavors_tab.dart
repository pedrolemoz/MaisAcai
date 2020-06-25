import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mais_acai/components/bottom_button_bar.dart';
import 'package:mais_acai/components/gradient_flavor_card.dart';
import 'package:mais_acai/model/product_data.dart';

class FlavorsTab extends StatelessWidget {
  FlavorsTab({@required this.tabController});

  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    final List<Widget> flavorsList = [
      GradientFlavorCard(item: Flavors.acaiPuro),
      GradientFlavorCard(item: Flavors.acaiComBanana),
      GradientFlavorCard(item: Flavors.acaiComMorango),
      GradientFlavorCard(item: Flavors.acaiComCupuacu),
    ];

    return Column(
      children: <Widget>[
        Flexible(
          child: ListView(
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
                itemCount: flavorsList.length,
                physics: BouncingScrollPhysics(),
                padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 10.0,
                ),
                itemBuilder: (context, index) {
                  return flavorsList[index];
                },
              ),
            ],
          ),
        ),
        BottomButtonBar(
          label: 'Continuar',
          itemType: 1,
          onTap: () {
            tabController.index++;
            print(true);
          },
        ),
      ],
    );
  }
}
