import 'package:asap_app/app/ui/widgets/drawer.dart';
import 'package:flutter/material.dart';

import 'widgets/buttons_row.dart';
import 'widgets/custom_container.dart';
import 'widgets/custom_icon.dart';
import 'widgets/custom_padding_text.dart';

class AccountDetailPage extends StatelessWidget {
  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => AccountDetailPage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).accentColor,
        title: const Text('Account Details'),
      ),
      drawer: AppDrawer(),
      body: Column(
        children: [
          const SizedBox(height: 50),
          CustomContainer(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const CustomPaddingText(
                  text: '+1987898967489',
                ),
                CustomIcon()
              ],
            ),
          ),
          const SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text(
                  'Personal Info',
                  style: TextStyle(
                      color: Colors.white, fontSize: 18, letterSpacing: 1.5),
                ),
                CustomIcon(),
              ],
            ),
          ),
          const SizedBox(height: 25),
          const CustomContainer(
            height: 50,
            child: Align(
              alignment: Alignment.centerLeft,
              child: CustomPaddingText(
                text: 'Supermercado Rey',
              ),
            ),
          ),
          const SizedBox(height: 25),
          const CustomContainer(
            height: 50,
            child: Align(
              alignment: Alignment.centerLeft,
              child: CustomPaddingText(
                text: 'Supermercado Rey',
              ),
            ),
          ),
          const SizedBox(height: 25),
          const CustomContainer(
            height: 50,
            child: Align(
              alignment: Alignment.centerLeft,
              child: CustomPaddingText(
                text: 'costadelivery@gmail.com',
              ),
            ),
          ),
          const SizedBox(height: 25),
          ButtonsRow(),
        ],
      ),
    );
  }
}
