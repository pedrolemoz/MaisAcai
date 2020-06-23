import 'package:flutter/material.dart';
import 'package:mais_acai/cart/product_data.dart';
import 'package:mais_acai/components/bottom_button_bar.dart';
import 'package:mais_acai/components/gradient_item_card.dart';

class FlavorsTab extends StatelessWidget {
  FlavorsTab({@required this.tabController});

  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    final List<GradientItemCard> flavorsList = [
      GradientItemCard(
        title: 'Açaí Puro',
        imageURI: 'assets/acai_puro.png',
        darkColor: Color(0xFF6A1953),
        lightColor: Color(0xFF9a487f),
        item: AcaiFlavors.acai,
        itemType: 1,
      ),
      GradientItemCard(
        title: 'Açaí com Banana',
        imageURI: 'assets/acai_com_banana.png',
        darkColor: Colors.yellow[900],
        lightColor: Colors.yellow[600],
        item: AcaiFlavors.acaiWithBanana,
        itemType: 1,
      ),
      GradientItemCard(
        title: 'Açaí com Morango',
        imageURI: 'assets/acai_com_morango.png',
        darkColor: Colors.red[900],
        lightColor: Colors.red[600],
        item: AcaiFlavors.acaiWithStrawberry,
        itemType: 1,
      ),
      GradientItemCard(
        title: 'Açaí com Cupuaçu',
        imageURI: 'assets/acai_com_cupuacu.png',
        darkColor: Colors.brown[900],
        lightColor: Colors.brown[600],
        item: AcaiFlavors.acaiWithCupuacu,
        itemType: 1,
      ),
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
                  left: 10.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Escolha o sabor',
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    Text(
                      'Escolha até dois sabores indescritíveis',
                      style: Theme.of(context)
                          .textTheme
                          .subtitle1
                          .copyWith(color: Color(0xFF5E6163)),
                    ),
                  ],
                ),
              ),
              GridView.builder(
                key: PageStorageKey(1),
                itemCount: 4,
                physics: BouncingScrollPhysics(),
                padding: EdgeInsets.all(10.0),
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
