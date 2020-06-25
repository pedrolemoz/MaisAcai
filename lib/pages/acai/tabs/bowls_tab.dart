import 'package:flutter/material.dart';
import 'package:mais_acai/components/bottom_button_bar.dart';
import 'package:mais_acai/components/gradient_bowl_card.dart';
import 'package:mais_acai/model/product_data.dart';

class BowlsTab extends StatelessWidget {
  BowlsTab({@required this.tabController});

  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    final List<GradientBowlCard> bowlsList = [
      GradientBowlCard(
        item: Bowls.threeHundred,
      ),
      GradientBowlCard(
        item: Bowls.fourHundred,
      ),
      GradientBowlCard(
        item: Bowls.fiveHundred,
      ),
      GradientBowlCard(
        item: Bowls.oneThousand,
      ),
    ];

    return Column(
      children: [
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
                      'Escolha o pote',
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    Text(
                      'Qual o tamanho da sua fome?',
                      style: Theme.of(context)
                          .textTheme
                          .subtitle1
                          .copyWith(color: Color(0xFF5E6163)),
                    ),
                  ],
                ),
              ),
              GridView.builder(
                key: PageStorageKey('bowls_tab'),
                itemCount: bowlsList.length,
                physics: BouncingScrollPhysics(),
                padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 10.0,
                ),
                itemBuilder: (context, index) {
                  return bowlsList[index];
                },
              ),
            ],
          ),
        ),
        BottomButtonBar(
          label: 'Continuar',
          itemType: 0,
          onTap: () {
            tabController.index++;
            print(true);
          },
        ),
      ],
    );
  }
}
