import 'package:flutter/material.dart';
import 'package:latuni_supabase/my_widgets/appbar_widgets.dart';

class EditBusinessPage extends StatelessWidget {
  const EditBusinessPage({super.key});
  static String pageName = '/edit_business_page';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: const AppbarBackButton(),
        title: const AppbarTitle(title: 'Edit Profile'),
      ),
      body: Container(
        color: Colors.red,
      ),
    );
  }
}
