import 'package:flutter/material.dart';
import 'package:latuni_supabase/my_widgets/appbar_widgets.dart';

class WishlistPage extends StatelessWidget {
  const WishlistPage({super.key});
  static String pageName = '/wishlist_page';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: const AppbarBackButton(),
        title: const AppbarTitle(title: 'Wishlist'),
      ),
      body: Container(
        color: Colors.teal,
        //  child: Text('Customer Orders'),
      ),
    );
  }
}
