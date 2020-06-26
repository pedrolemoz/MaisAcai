import 'package:flutter/material.dart';
import 'package:mais_acai/components/bottom_button_bar.dart';
import 'package:mais_acai/components/gradient_additional_card.dart';
import 'package:mais_acai/model/product_data.dart';
import 'package:mais_acai/pages/cart/cart_page.dart';

class AdditionalsTab extends StatelessWidget {
  AdditionalsTab({@required this.tabController});

  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    final List<GradientAdditionalCard> additionalsList = [
      GradientAdditionalCard(item: Additionals.brigadeiro),
      GradientAdditionalCard(item: Additionals.cerejas),
      GradientAdditionalCard(item: Additionals.caldaDeChocolate),
      GradientAdditionalCard(item: Additionals.caldaDeChocolateComCoco),
      GradientAdditionalCard(item: Additionals.leiteCondensado),
      GradientAdditionalCard(item: Additionals.granola),
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
                itemCount: additionalsList.length,
                physics: BouncingScrollPhysics(),
                padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 10.0,
                ),
                itemBuilder: (context, index) {
                  return additionalsList[index];
                },
              ),
            ],
          ),
        ),
        BottomButtonBar(
          label: 'Adicionar ao carrinho',
          itemType: 2,
          onTap: () {
            Navigator.pushNamed(context, CartPage.routeID);
          },
        ),
      ],
    );
  }
}
