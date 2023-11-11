import 'package:flutter/material.dart';
import 'package:latuni_supabase/my_widgets/appbar_widgets.dart';

class ManageProductPage extends StatelessWidget {
  const ManageProductPage({super.key});
  static String pageName = '/manage_product_page';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: const AppbarBackButton(),
        title: const AppbarTitle(title: 'Manage Products'),
      ),
      body: Container(
        color: Colors.red,
      ),
    );
  }
}
