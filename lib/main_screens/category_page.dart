import 'package:flutter/material.dart';
import 'package:latuni_supabase/categories/dairy_page.dart';
import 'package:latuni_supabase/categories/kisan_page.dart';
import 'package:latuni_supabase/my_widgets/fake_search.dart';

import '../categories/clothing_page.dart';
import '../categories/kirana_grocery_page.dart';

/// global list totally related to our categories listed on HomePage()

List<CategoryData> categories = [
  CategoryData(label: 'Kisan Bhai'),
  CategoryData(label: 'Dairy'),
  CategoryData(label: 'Kirana Grocery'),
  CategoryData(label: 'Clothing'),
];

class CategoryPage extends StatefulWidget {
  const CategoryPage({super.key});

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  void initState() {
    // whenever uses lands on this page,
    // to show him/her the by default page
    for (var item in categories) {
      item.isSelected = false;
    }
    categories[0].isSelected = true;

    super.initState();
  }

  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        title: const FakeSearch(),
        elevation: 0,
        backgroundColor: Colors.grey.shade100,
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(left: 0, bottom: 0, child: leftContainer(size)),
            Positioned(right: 0, bottom: 0, child: rightContainer(size)),
          ],
        ),
      ),
    );
  }

  Widget leftContainer(Size size) {
    return Container(
      width: size.width * .20,
      height: size.height * .80,
      color: Colors.grey.shade300,
      padding: const EdgeInsets.only(top: 24),
      child: ListView.builder(
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                /// the whole this code is functioned
                /// through the pageView changed call back down
                setState(() {
                  // for (var item in categories) {
                  //   item.isSelected = false;
                  // }
                  // categories[index].isSelected = true;
                  /// and this code is for Pageview actually
                  _pageController.animateToPage(
                    index,
                    duration: const Duration(milliseconds: 900),
                    curve: Curves.easeInCirc,
                  );
                });
              },
              child: Container(
                height: 100,
                decoration: BoxDecoration(
                  color: categories[index].isSelected
                      ? Colors.grey.shade100
                      : Colors.grey.shade300,
                ),
                child: Center(
                  child: Text(
                    categories[index].label.toString(),
                    textAlign: TextAlign.center,
                    style: const TextStyle(color: Colors.black, fontSize: 18),
                  ),
                ),
              ),
            );
          }),
    );
  }

  Container rightContainer(Size size) {
    return Container(
      width: size.width * 0.80,
      height: size.height * 0.80,
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
      ),
      child: PageView(
        controller: _pageController,
        scrollDirection: Axis.vertical,
        onPageChanged: (value) {
          /// the whole code is originally from listView.builder from above
          setState(() {
            for (var item in categories) {
              item.isSelected = false;
            }
            categories[value].isSelected = true;
          });
        },
        children: const [
          // created model from it and applied to all other
          // pages down in this list, because they
          // carry the same type of data
          KisanPage(),
          DairyPage(),
          KiranaGroceryPage(),
          ClothingPage(),
        ],
      ),
    );
  }
}

class CategoryData {
  String label;
  bool isSelected;
  CategoryData({required this.label, this.isSelected = false});
}
