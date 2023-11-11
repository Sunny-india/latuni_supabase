import 'package:flutter/material.dart';
import 'package:latuni_supabase/my_widgets/appbar_widgets.dart';

class SupplierStaticsPage extends StatelessWidget {
  const SupplierStaticsPage({super.key});
  static String pageName = '/supplier_statics_page';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: const AppbarBackButton(),
        title: const AppbarTitle(title: 'Statics'),
      ),
      body: Container(
        color: Colors.red,
      ),
    );
  }
}
