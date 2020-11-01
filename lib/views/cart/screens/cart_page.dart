import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

import '../../utils/constants.dart';

class CartPage extends StatefulWidget {
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
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Confira os seus pedidos',
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      Text(
                        'Verifique se tudo está correto',
                        style: Theme.of(context)
                            .textTheme
                            .subtitle1
                            .copyWith(color: Color(0xFF5E6163)),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 7.5),
                  child: Dismissible(key: Key('card'), child: OrderCard()),
                ),
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
    return Material(
      elevation: 2.0,
      child: Ink(
        height: 70.0,
        decoration: BoxDecoration(
          gradient: kPurpleGradient,
        ),
        child: InkWell(
          onTap: () {},
          splashColor: Color(0xFFCED2D9),
          child: Center(
            child: Text(
              'Escolher endereço de entrega',
              style: Theme.of(context).textTheme.headline6.copyWith(
                    color: Colors.white,
                  ),
            ),
          ),
        ),
      ),
    );
  }
}

class OrderCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 8.0,
      borderRadius: BorderRadius.circular(kBorderRadius),
      child: Ink(
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
          crossAxisAlignment: CrossAxisAlignment.start,
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Valor: R\$ 20,00',
                        style: Theme.of(context)
                            .textTheme
                            .subtitle1
                            .copyWith(color: Theme.of(context).backgroundColor),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
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
                  // Padding(
                  //   padding: EdgeInsets.only(bottom: 10.0),
                  //   child: OrderAdditionals(),
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
//   @override
//   Widget build(BuildContext context) {
//     return Dismissible(
//       key: Key('card'),
//       child: Container(
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(kBorderRadius),
//           gradient: LinearGradient(
//             begin: Alignment.topCenter,
//             end: Alignment.bottomCenter,
//             colors: [
//               Color(0xFF9a487f),
//               Color(0xFF6A1953),
//             ],
//           ),
//         ),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Container(
//               height: 50.0,
//               width: double.infinity,
//               decoration: BoxDecoration(
//                 color: Theme.of(context).primaryColor,
//                 borderRadius: BorderRadius.only(
//                   topLeft: Radius.circular(kBorderRadius),
//                   topRight: Radius.circular(kBorderRadius),
//                 ),
//               ),
//               child: Align(
//                 alignment: Alignment.centerLeft,
//                 child: Padding(
//                   padding: EdgeInsets.symmetric(horizontal: 20.0),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Text(
//                         'Valor: R\$ 20,00',
//                         style: Theme.of(context)
//                             .textTheme
//                             .subtitle1
//                             .copyWith(color: Theme.of(context).backgroundColor),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//             Padding(
//               padding: EdgeInsets.all(20.0),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Padding(
//                     padding: EdgeInsets.only(bottom: 10.0),
//                     child: OrderBowl(),
//                   ),
//                   Padding(
//                     padding: EdgeInsets.only(bottom: 10.0),
//                     child: OrderFlavors(),
//                   ),
//                   Padding(
//                     padding: EdgeInsets.only(bottom: 10.0),
//                     child: OrderAdditionals(),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

class CheckoutActionButton extends StatefulWidget {
  CheckoutActionButton({
    @required this.label,
    @required this.color,
  });

  final Text label;
  final Color color;

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
            color: widget.color,
          ),
          child: Center(
            child: widget.label,
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
              '• Pote de ',
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
      0,
      (index) => Text(
        '• ' + 'a',
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

// class OrderAdditionals extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     List<Widget> additionals = List<Widget>.generate(
//       Provider.of<Order>(context, listen: false).order[2].length,
//       (index) => Text(
//         '• ' +
//             Provider.of<Order>(context, listen: false)
//                 .order[2][index]
//                 .toString(),
//         style: Theme.of(context)
//             .textTheme
//             .subtitle1
//             .copyWith(color: Color(0xFFF0F0F5), fontWeight: FontWeight.w400),
//       ),
//     );

//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           'Adicionais',
//           style: Theme.of(context)
//               .textTheme
//               .headline6
//               .copyWith(color: Colors.white),
//         ),
//         Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: additionals,
//         ),
//       ],
//     );
//   }
// }
