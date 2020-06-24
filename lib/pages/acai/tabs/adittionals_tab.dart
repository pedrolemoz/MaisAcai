import 'package:flutter/material.dart';
import 'package:mais_acai/cart/product_data.dart';
import 'package:mais_acai/components/bottom_button_bar.dart';
import 'package:mais_acai/components/gradient_item_card.dart';

class AdittionalsTab extends StatelessWidget {
  AdittionalsTab({@required this.tabController});

  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    final List<GradientItemCard> adittionalsList = [
      GradientItemCard(
        title: 'Brigadeiro',
        imageURI: 'assets/acai_puro.png',
        darkColor: Color(0xFF6A1953),
        lightColor: Color(0xFF9a487f),
        item: AcaiAdditionals.brigadeiro,
        itemType: 2,
      ),
      GradientItemCard(
        title: 'Cerejas',
        imageURI: 'assets/acai_puro.png',
        darkColor: Color(0xFF6A1953),
        lightColor: Color(0xFF9a487f),
        item: AcaiAdditionals.cherries,
        itemType: 2,
      ),
      GradientItemCard(
        title: 'Calda de chocolate',
        imageURI: 'assets/acai_puro.png',
        darkColor: Color(0xFF6A1953),
        lightColor: Color(0xFF9a487f),
        item: AcaiAdditionals.chocolateSyrup,
        itemType: 2,
      ),
      GradientItemCard(
        title: 'Calda de chocolate com côco',
        imageURI: 'assets/acai_puro.png',
        darkColor: Color(0xFF6A1953),
        lightColor: Color(0xFF9a487f),
        item: AcaiAdditionals.chocolateSyrupWithCoconut,
        itemType: 2,
      ),
      GradientItemCard(
        title: 'Leite condensado',
        imageURI: 'assets/acai_puro.png',
        darkColor: Color(0xFF6A1953),
        lightColor: Color(0xFF9a487f),
        item: AcaiAdditionals.condensedMilk,
        itemType: 2,
      ),
      GradientItemCard(
        title: 'Granola',
        imageURI: 'assets/acai_puro.png',
        darkColor: Color(0xFF6A1953),
        lightColor: Color(0xFF9a487f),
        item: AcaiAdditionals.granola,
        itemType: 2,
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
                      'Escolha os adicionais',
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    Text(
                      'Escolha até três ingredientes para incrementar',
                      style: Theme.of(context)
                          .textTheme
                          .subtitle1
                          .copyWith(color: Color(0xFF5E6163)),
                    ),
                  ],
                ),
              ),
              GridView.builder(
                key: PageStorageKey('adittionals_tab'),
                itemCount: adittionalsList.length,
                physics: BouncingScrollPhysics(),
                padding: EdgeInsets.all(10.0),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 10.0,
                ),
                itemBuilder: (context, index) {
                  return adittionalsList[index];
                },
              ),
            ],
          ),
        ),
        BottomButtonBar(
          label: 'Continuar',
          itemType: 2,
          onTap: () {
            print(true);
          },
        ),
      ],
    );
  }
}
