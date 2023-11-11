import 'package:flutter/material.dart';
import 'package:latuni_supabase/my_widgets/appbar_widgets.dart';

class StoresPage extends StatelessWidget {
  const StoresPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: const AppbarTitle(title: 'Stores'),
      ),
    );
  }
}
