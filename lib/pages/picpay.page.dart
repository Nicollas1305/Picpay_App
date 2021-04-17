import 'package:flutter/material.dart';
import 'package:picpay/widgets/button_tab.widget.dart';
import 'package:picpay/widgets/history.widget.dart';

class PicPayPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              buildAppBar(context),
              SizedBox(
                height: 10,
              ),
              buildHistory(),
            ],
          ),
        ),
      ),
    );
  }
}

Widget buildAppBar(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(10),
    child: Column(
      children: [
        Row(
          children: [
            IconButton(
              icon: Icon(Icons.qr_code_outlined),
              color: Color(0xFF0F6E42),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.settings_outlined),
              color: Color(0xFF0F6E42),
              onPressed: () {},
            ),
            Spacer(),
            Column(
              children: [
                Text(
                  'Meu saldo',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'R\$ 12.000,00',
                  style: Theme.of(context).textTheme.headline6,
                )
              ],
            ),
            Spacer(),
            IconButton(
              icon: Icon(Icons.card_giftcard_outlined),
              color: Color(0xFF0F6E42),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.maps_ugc_outlined),
              color: Color(0xFF0F6E42),
              onPressed: () {},
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        GestureDetector(
          onTap: () {},
          child: Container(
            height: 45,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black38,
              ),
              borderRadius: BorderRadius.circular(50),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 10),
            margin: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Icon(
                  Icons.search,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'O que você quer pagar?',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}

Widget buildHistory() {
  return Column(
    children: [
      Row(
        children: [
          ButtonTab(
            isSelected: true,
            text: 'Sugestões',
          ),
          ButtonTab(
            isSelected: false,
            text: 'Favoritos',
          ),
        ],
      ),
      SizedBox(
        height: 10,
      ),
      Container(
        height: 110,
        margin: const EdgeInsets.only(left: 5),
        child: NotificationListener<OverscrollIndicatorNotification>(
          onNotification: (notification) {
            notification.disallowGlow();
            return true;
          },
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (_, index) {
                return History();
              }),
        ),
      )
    ],
  );
}
