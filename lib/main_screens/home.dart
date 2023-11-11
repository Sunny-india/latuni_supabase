import 'package:flutter/material.dart';
import 'package:latuni_supabase/my_widgets/decorated_container.dart';

import '../my_widgets/fake_search.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(120),
          child: AppBar(
            title: const FakeSearch(),
            elevation: 0,
            backgroundColor: Colors.grey.shade100,
            bottom: TabBar(
                indicatorColor: Colors.red.shade100,
                indicatorSize: TabBarIndicatorSize.label,
                isScrollable: true,
                labelColor: Colors.red.shade700,
                unselectedLabelColor: Colors.black,
                tabs: const [
                  RepeatedTab(categoryName: 'Kisan Bhai'),
                  RepeatedTab(categoryName: 'Dairy'),
                  RepeatedTab(categoryName: 'Kirana Grocery'),
                  RepeatedTab(categoryName: 'Clothing'),
                ]),
          ),
        ),
        body: const SafeArea(
            child: TabBarView(
          children: [
            Center(child: Text('Kisan Bhai')),
            Center(child: Text('Dairy')),
            Center(
              child: Text('Kirana Grocery'),
            ),
            Center(child: Text('Clothing')),
          ],
        )),
      ),
    );
  }
}

class RepeatedTab extends StatelessWidget {
  const RepeatedTab({
    super.key,
    required this.categoryName,
  });
  final String categoryName;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return DecoratedContainer(
      myWidth: size.width * .22,
      backgroundColor: Colors.grey.shade100,
      shadowRightColor: Colors.grey.shade300,
      myChild: Tab(
          child: Text(
        categoryName,
        textAlign: TextAlign.center,
      )),
    );
  }
}
