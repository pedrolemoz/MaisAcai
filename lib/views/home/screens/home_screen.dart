import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    // final List<Widget> menuItems = [
    //   GradientStaticItemCard(
    //     title: 'Açaí',
    //     imageAsset: 'assets/acai_puro.png',
    //     darkColor: Color(0xFF6A1953),
    //     lightColor: Color(0xFF9a487f),
    //     onTap: () => ExtendedNavigator.root.push(Routes.orderScreen),
    //   ),
    //   GradientStaticItemCard(
    //     title: 'Sorvete',
    //     imageAsset: 'assets/acai_puro.png',
    //     darkColor: Colors.blue[900],
    //     lightColor: Colors.blue[500],
    //   ),
    // ];

    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.light,
        centerTitle: true,
        backgroundColor: Theme.of(context).backgroundColor,
        iconTheme: IconThemeData(color: Theme.of(context).primaryColor),
        elevation: 0.0,
        title: Container(
          height: 35.0,
          child: Image.asset('assets/logo.png'),
        ),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {
                print('Botão de carrinho de compras');
              },
              child: Icon(
                FlutterIcons.shopping_cart_fea,
                color: Theme.of(context).primaryColor,
                size: 28.0,
              ),
            ),
          ),
        ],
      ),
      drawer: Drawer(
        elevation: 1.0,
        child: Container(),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(
              top: 15.0,
              bottom: 5.0,
              left: 15.0,
            ),
            child: Text(
              'O que você deseja?',
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          GridView.builder(
            key: PageStorageKey('menu_items'),
            itemCount: 2,
            physics: BouncingScrollPhysics(),
            padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 10.0,
            ),
            itemBuilder: (context, index) {
              return Container();
            },
          ),
        ],
      ),
    );
  }
}
