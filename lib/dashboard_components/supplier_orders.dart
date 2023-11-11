import 'package:flutter/material.dart';

import '../my_widgets/appbar_widgets.dart';

class SupplierOrdersPage extends StatelessWidget {
  const SupplierOrdersPage({super.key});
  static String pageName = '/supplier_orders_page';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: const AppbarBackButton(),
        title: const AppbarTitle(title: 'Orders'),
      ),
      body: Container(
        color: Colors.red,
      ),
    );
  }
}
