import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:mais_acai/model/order.dart';
import 'package:mais_acai/utils/constants.dart';
import 'package:provider/provider.dart';

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
        brightness: Brightness.light,
        backgroundColor: Theme.of(context).backgroundColor,
        elevation: 0.0,
        title: Text(
          'Carrinho de compras',
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
      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(15.0),
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 15.0),
                  child: OrderCard(),
                ),
                OrderCard(),
              ],
            ),
          ),
          FinishAllOrders(),
        ],
      ),
    );
  }
}

class FinishAllOrders extends StatefulWidget {
  @override
  _FinishAllOrdersState createState() => _FinishAllOrdersState();
}

class _FinishAllOrdersState extends State<FinishAllOrders> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF1AB860),
              Color(0xFF1BC467),
            ],
          ),
        ),
        child: Center(
          child: Text(
            'Confirmar compra',
            style: Theme.of(context)
                .textTheme
                .headline6
                .copyWith(color: Color(0xFFF5F8FC)),
          ),
        ),
        height: 70.0,
      ),
    );
  }
}

class OrderCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(kBorderRadius),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFF9a487f),
            Color(0xFF6A1953),
          ],
        ),
      ),
      child: Column(
        children: [
          Container(
            height: 50.0,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(kBorderRadius),
                topRight: Radius.circular(kBorderRadius),
              ),
            ),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  'Valor: R\$ 20,00',
                  style: Theme.of(context)
                      .textTheme
                      .subtitle1
                      .copyWith(color: Theme.of(context).backgroundColor),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 12.0,
              bottom: 20.0,
              left: 20.0,
              right: 20.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 10.0),
                  child: OrderBowl(),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 10.0),
                  child: OrderFlavors(),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 15.0),
                  child: OrderAdditionals(),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CheckoutActionButton(
                      label: 'Apagar',
                    ),
                    VerticalDivider(),
                    CheckoutActionButton(
                      label: 'Duplicar',
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CheckoutActionButton extends StatefulWidget {
  CheckoutActionButton({
    @required this.label,
  });

  final String label;

  @override
  _CheckoutActionButtonState createState() => _CheckoutActionButtonState();
}

class _CheckoutActionButtonState extends State<CheckoutActionButton> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          print(true);
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            color: Theme.of(context).backgroundColor,
          ),
          child: Center(
            child: Text(
              widget.label,
              style: Theme.of(context).textTheme.subtitle1.copyWith(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.w800,
                  ),
            ),
          ),
          height: 50.0,
        ),
      ),
    );
  }
}

class OrderBowl extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Tamanho do pote',
          style: Theme.of(context)
              .textTheme
              .headline6
              .copyWith(color: Colors.white),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '• Pote de ${Provider.of<Order>(context, listen: false).order[0].toString()}',
              style: Theme.of(context).textTheme.subtitle1.copyWith(
                  color: Color(0xFFF0F0F5), fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ],
    );
  }
}

class OrderFlavors extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Widget> flavors = List<Widget>.generate(
      Provider.of<Order>(context, listen: false).order[1].length,
      (index) => Text(
        '• ' +
            Provider.of<Order>(context, listen: false)
                .order[1][index]
                .toString(),
        style: Theme.of(context)
            .textTheme
            .subtitle1
            .copyWith(color: Color(0xFFF0F0F5), fontWeight: FontWeight.w400),
      ),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Sabores',
          style: Theme.of(context)
              .textTheme
              .headline6
              .copyWith(color: Colors.white),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: flavors,
        ),
      ],
    );
  }
}

class OrderAdditionals extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Widget> additionals = List<Widget>.generate(
      Provider.of<Order>(context, listen: false).order[2].length,
      (index) => Text(
        '• ' +
            Provider.of<Order>(context, listen: false)
                .order[2][index]
                .toString(),
        style: Theme.of(context)
            .textTheme
            .subtitle1
            .copyWith(color: Color(0xFFF0F0F5), fontWeight: FontWeight.w400),
      ),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Adicionais',
          style: Theme.of(context)
              .textTheme
              .headline6
              .copyWith(color: Colors.white),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: additionals,
        ),
      ],
    );
  }
}
