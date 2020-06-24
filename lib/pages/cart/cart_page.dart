import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class CartPage extends StatefulWidget {
  static final routeID = 'cart_page';
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Theme.of(context).backgroundColor,
        elevation: 0.0,
        title: Text(
          'Seus pedidos',
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
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            constraints: BoxConstraints(
              minHeight: 180.0,
              minWidth: 180.0,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.orange[600],
                  Colors.orange[900],
                ],
              ),
            ),
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Image.asset(
                      'assets/acai_puro.png',
                      height: 120.0,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Pote de 300 ml',
                          textAlign: TextAlign.center,
                          style: Theme.of(context)
                              .textTheme
                              .subtitle1
                              .copyWith(color: Colors.white),
                        ),
                        Text(
                          'Açaí com Banana, Açaí com Morango',
                          textAlign: TextAlign.center,
                          style: Theme.of(context)
                              .textTheme
                              .subtitle1
                              .copyWith(color: Colors.white),
                        ),
                        Text(
                          'Brigadeiro, Calda de chocolate com coco, Leite condensado',
                          textAlign: TextAlign.center,
                          style: Theme.of(context)
                              .textTheme
                              .subtitle1
                              .copyWith(color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
