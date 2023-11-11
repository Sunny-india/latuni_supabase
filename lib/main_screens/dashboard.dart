import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:latuni_supabase/dashboard_components/manage_products_page.dart';
import 'package:latuni_supabase/dashboard_components/supplier_balance_page.dart';
import 'package:latuni_supabase/main_screens/welcome_page.dart';
import 'package:latuni_supabase/my_widgets/appbar_widgets.dart';

import '../dashboard_components/edit_business_page.dart';
import '../dashboard_components/my_store.dart';
import '../dashboard_components/supplier_orders.dart';
import '../dashboard_components/supplier_statics_page.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});
  static String pageName = '/dashboard_page';

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  void initState() {
    listOfIconLabel = [
      {'icon': Icons.store, 'label': 'My Store', 'onPressed': goToMyStorePage},
      {
        'icon': Icons.shop_2_outlined,
        'label': 'Orders',
        'onPressed': goToSupplierOrdersPage
      },
      {
        'icon': Icons.edit,
        'label': 'Edit Profile',
        'onPressed': goToEditBusinessPage
      },
      {
        'icon': Icons.settings,
        'label': 'Manage Products',
        'onPressed': goToManageProductsPage
      },
      {
        'icon': Icons.attach_money,
        'label': 'Balance',
        'onPressed': goToSupplierBalancePage
      },
      {
        'icon': Icons.show_chart,
        'label': 'Statics',
        'onPressed': goToSupplierStaticsPage
      },
    ];
    super.initState();
  }

  late List<Map<String, dynamic>> listOfIconLabel;

  Color backgroundColor = Colors.grey.shade100;

  void logOut() {
    Navigator.pushReplacementNamed(context, WelcomePage.pageName);
  }

  void goToMyStorePage() {
    Navigator.pushNamed(context, MyStorePage.pageName);
  }

  void goToSupplierOrdersPage() {
    Navigator.pushNamed(context, SupplierOrdersPage.pageName);
  }

  void goToEditBusinessPage() {
    Navigator.pushNamed(context, EditBusinessPage.pageName);
  }

  void goToManageProductsPage() {
    Navigator.pushNamed(context, ManageProductPage.pageName);
  }

  void goToSupplierBalancePage() {
    Navigator.pushNamed(context, SupplierBalancePage.pageName);
  }

  void goToSupplierStaticsPage() {
    Navigator.pushNamed(context, SupplierStaticsPage.pageName);
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      //backgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        //centerTitle: true,
        title: const Padding(
          padding: EdgeInsets.only(left: 28.0),
          child: AppbarTitle(title: 'Dashboard'),
        ),
        actions: [
          IconButton(
            // todo: for logging out from database
            onPressed: logOut,
            icon: const Icon(
              Icons.logout,
              color: Colors.black,
            ),
          ),
          const SizedBox(width: 12)
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 40),
          child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, mainAxisSpacing: 44, crossAxisSpacing: 24),
              itemCount: 6,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: listOfIconLabel[index]['onPressed'],
                  child: Container(
                    height: size.height * .15,
                    width: size.width * .15,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: backgroundColor,
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                          offset: -const Offset(5, 5),
                          color: Colors.grey.shade50,
                          //  spreadRadius: 2,
                          blurRadius: 4,
                          inset: true,
                        ),
                        const BoxShadow(
                          offset: Offset(5, 5),
                          color: Color(0xffa7a9af),
                          blurRadius: 4,
                          inset: true,
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          listOfIconLabel[index]['icon'],
                          size: 50,
                        ),
                        Text(listOfIconLabel[index]['label']),
                      ],
                    ),
                  ),
                );
              }),
        ),
      ),
    );
  }
}

class LabelIcon extends StatelessWidget {
  const LabelIcon(
      {super.key,
      required this.myIcon,
      required this.myLabel,
      required this.myFunction});
  final IconData myIcon;
  final String myLabel;
  final Function() myFunction;
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
