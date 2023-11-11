import 'package:flutter/material.dart';
import 'package:latuni_supabase/my_widgets/appbar_widgets.dart';

class MyStorePage extends StatelessWidget {
  const MyStorePage({super.key});
  static String pageName = '/my_store_page';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: const AppbarBackButton(),
        title: const AppbarTitle(title: 'My Store'),
      ),
      body: Container(
        color: Colors.red,
      ),
    );
  }
}
