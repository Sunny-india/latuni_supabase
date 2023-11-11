import 'package:flutter/material.dart';
import 'package:latuni_supabase/main_screens/customer_home_page.dart';
import 'package:latuni_supabase/my_widgets/appbar_widgets.dart';
import 'package:latuni_supabase/my_widgets/decorated_container.dart';

import '../my_widgets/my_button.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key, this.back});
  final Widget? back;
  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        leading: widget.back,
        title: const AppbarTitle(
          title: 'Cart',
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: DecoratedContainer(
              backgroundColor: Colors.grey.shade100,
              shadowRightColor: Colors.grey.shade900,
              innerHorizontalPadding: 0,
              innerVerticalPadding: 0,
              myChild: IconButton(
                iconSize: 28,
                onPressed: () {},
                icon: const Icon(
                  Icons.delete_forever,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Your cart is empty'),
              const SizedBox(
                height: 20,
              ),
              MaterialButton(
                  color: Colors.red.shade900,
                  minWidth: size.width * .6,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14)),
                  onPressed: () {
                    //  Navigator.pop(context);
                    Navigator.canPop(context)
                        ? Navigator.pop(context)
                        : Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) {
                            return const CustomerHomePage();
                          }));
                  },
                  child: const Text(
                    'Continue Shopping',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  )),
            ],
          ),
        ),
      ),
      bottomSheet: Padding(
        padding: const EdgeInsets.all(8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Row(
              children: [
                Text(
                  'Total: ',
                  style: TextStyle(fontSize: 18),
                ),
                Text(
                  '\$ 0.00',
                  style: TextStyle(fontSize: 20, color: Colors.red),
                ),
              ],
            ),
            MyButton(
                mWidth: size.width * .5,
                // backgroundColor: backgroundColor,

                title: const Text(
                  'CHECK-OUT',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                onTapped: () {}),
          ],
        ),
      ),
    );
  }
}
