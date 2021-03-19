import 'package:flutter/material.dart';

import '../account_detail/account_detail_page.dart';
import '../home/home_page.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Container(
      color: Theme.of(context).primaryColor,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          _createHeader(),
          _textMenu(),
          _createDrawerItem(
              icon: Icons.restaurant,
              text: 'Ordenes de menus',
              onTap: () {
                Navigator.of(context).push(HomePage.route());
              }),
          _createDrawerItem(
              icon: Icons.restaurant_menu_sharp, text: 'Elementos de menus'),
          _textOrders(),
          _createDrawerItem(
              icon: Icons.person,
              text: 'My Account',
              onTap: () {
                Navigator.of(context).push(AccountDetailPage.route());
              }),
          _createDrawerItem(icon: Icons.local_shipping, text: 'My Orders'),
          _createDrawerItem(icon: Icons.account_balance_wallet, text: 'Wallet'),
        ],
      ),
    ));
  }

  Widget _textMenu() {
    return const Padding(
      padding: EdgeInsets.only(top: 8.0, left: 20.0, bottom: 10.0),
      child: Text('Menus',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          )),
    );
  }

  Widget _textOrders() {
    return const Padding(
      padding: EdgeInsets.only(top: 8.0, left: 20.0, bottom: 10.0),
      child: Text('My Orders',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          )),
    );
  }

  Widget _createHeader() {
    return DrawerHeader(
      margin: EdgeInsets.zero,
      padding: EdgeInsets.zero,
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage('assets/descarga.jpeg'),
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            bottom: 12.0,
            left: 16.0,
            child: Column(
              children: [
                const Text(
                  'Supermercado Rey',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const Text(
                  '+879697897056',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _createDrawerItem(
      {IconData icon, String text, GestureTapCallback onTap}) {
    return ListTile(
      title: Row(
        children: <Widget>[
          Icon(
            icon,
            color: Colors.white,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              text,
              style: const TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
      onTap: onTap,
    );
  }
}
