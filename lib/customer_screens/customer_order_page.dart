import 'package:flutter/material.dart';
import 'package:latuni_supabase/my_widgets/appbar_widgets.dart';

class CustomerOrderPage extends StatelessWidget {
  const CustomerOrderPage({super.key});
  static String pageName = '/customer_order_page';
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
        color: Colors.teal,
        //  child: Text('Customer Orders'),
      ),
    );
  }
}
