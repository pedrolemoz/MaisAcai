import 'package:flutter/material.dart';
import 'package:mais_acai/model/order.dart';
import 'package:mais_acai/components/gradient_static_item_card.dart';
import 'package:provider/provider.dart';

class BowlsTab extends StatelessWidget {
  BowlsTab({@required this.tabController});

  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    final List<GradientStaticItemCard> bowlsList = [
      GradientStaticItemCard(
        title: '300 ml',
        imageURI: 'assets/acai_puro.png',
        darkColor: Color(0xFF6A1953),
        lightColor: Color(0xFF9a487f),
        onTap: () {
          Provider.of<Order>(context, listen: false).setBowl('300 ml');
          tabController.index++;
          print(Provider.of<Order>(context, listen: false).order);
        },
      ),
      GradientStaticItemCard(
        title: '400 ml',
        imageURI: 'assets/acai_puro.png',
        darkColor: Color(0xFF6A1953),
        lightColor: Color(0xFF9a487f),
        onTap: () {
          Provider.of<Order>(context, listen: false).setBowl('400 ml');
          tabController.index++;
          print(Provider.of<Order>(context, listen: false).order);
        },
      ),
      GradientStaticItemCard(
        title: '500 mL',
        imageURI: 'assets/acai_puro.png',
        darkColor: Color(0xFF6A1953),
        lightColor: Color(0xFF9a487f),
        onTap: () {
          Provider.of<Order>(context, listen: false).setBowl('500 ml');
          tabController.index++;
          print(Provider.of<Order>(context, listen: false).order);
        },
      ),
      GradientStaticItemCard(
        title: '1 litro',
        imageURI: 'assets/acai_puro.png',
        darkColor: Color(0xFF6A1953),
        lightColor: Color(0xFF9a487f),
        onTap: () {
          Provider.of<Order>(context, listen: false).setBowl('1 litro');
          tabController.index++;
          print(Provider.of<Order>(context, listen: false).order);
        },
      ),
    ];

    return ListView(
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
          padding: EdgeInsets.all(10.0),
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
    );
  }
}
