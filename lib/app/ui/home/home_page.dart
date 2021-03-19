import 'dart:async' show Future;
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

import '../widgets/drawer.dart';
import 'widgets/column_button.dart';

class HomePage extends StatefulWidget {
  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => HomePage());
  }

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  final List<Tab> myTabs = <Tab>[
    const Tab(text: 'Active Orders'),
    const Tab(text: 'Past Orders'),
  ];

  List data;

  Future<String> loadJsonData() async {
    String jsonText = await rootBundle.loadString('assets/orders.json');
    setState(() => data = json.decode(jsonText) as List);
    return 'success';
  }

  TabController _tabController;

  @override
  void initState() {
    super.initState();
    loadJsonData();
    _tabController = TabController(vsync: this, length: myTabs.length);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).accentColor,
        title: const Text('Menu Orders'),
        bottom: TabBar(
          controller: _tabController,
          tabs: myTabs,
        ),
      ),
      drawer: AppDrawer(),
      body: TabBarView(
          controller: _tabController,
          children: myTabs.map((Tab tab) {
            return _dataBuild();
          }).toList()),
    );
  }

  Widget _dataBuild() {
    return ListView.builder(
        itemCount: data == null ? 0 : data.length,
        itemBuilder: (context, index) {
          String name = data[index]['cliente'] as String;
          String orders = data[index]['orders'] as String;
          String orderId = data[index]['order_id'] as String;
          String address = data[index]['address'] as String;
          String deliveryTime = data[index]['delivery_time'] as String;

          return _cardData(name, orders, orderId, address, deliveryTime);
        });
  }

  Widget _cardData(
    String name,
    String orders,
    String orderId,
    String address,
    String deliveryTime,
  ) {
    return Card(
      color: Colors.transparent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: _columnText(
              name,
              orders,
              orderId,
              address,
              deliveryTime,
            ),
          ),
          ColumnButton()
        ],
      ),
    );
  }

  Widget _columnText(String name, String orders, String orderId, String address,
      String deliveryTime) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          name,
          style: const TextStyle(color: Colors.white),
        ),
        Text(
          orders,
          style: const TextStyle(color: Colors.white),
        ),
        Text(
          orderId,
          style: const TextStyle(color: Colors.white),
        ),
        Text(
          address,
          style: const TextStyle(color: Colors.white),
        ),
        Text(
          deliveryTime,
          style: const TextStyle(color: Colors.white),
        ),
      ],
    );
  }
}
