import 'package:flutter/material.dart';
import 'package:latuni_supabase/my_widgets/appbar_widgets.dart';

class SupplierBalancePage extends StatelessWidget {
  const SupplierBalancePage({super.key});
  static String pageName = '/supplier_balance_page';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: const AppbarBackButton(),
        title: const AppbarTitle(title: 'Supplier Balance'),
      ),
      body: Container(
        color: Colors.red,
      ),
    );
  }
}
