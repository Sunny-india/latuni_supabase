import 'package:flutter/material.dart';

import '../my_widgets/category_widgets.dart';
import '../utilities/category_list.dart';

/// 2nd Category page
class DairyPage extends StatefulWidget {
  const DairyPage({super.key});

  @override
  State<DairyPage> createState() => _DairyPageState();
}

class _DairyPageState extends State<DairyPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SafeArea(
        /// Because this page is used on 80% height, 80% width
        /// of the capacity of where it is called, so make it useful that way.
        child: Padding(
          padding: const EdgeInsets.only(top: 3, left: 1, right: 1),
          child: Stack(
            children: [
              Positioned(
                top: 0,
                left: 0,
                child: SizedBox(
                  height: size.height * .8,
                  width: size.width * .75,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CategoryHeaderLabel(headerLabel: 'Dairy'),
                      SizedBox(
                        height: size.height * .75,
                        width: size.width * .75,
                        // color: Colors.red,
                        child: GridView.builder(
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 3,
                                    crossAxisSpacing: 8,
                                    mainAxisSpacing: 30),
                            itemCount: dairy.length,
                            itemBuilder: (context, index) {
                              return SubCategoryModel(
                                mainCategoryName: 'Dairy',
                                subCategoryName: dairy[index],
                                assetName:
                                    'assets/images/rubber_bands/disco/DISCO_$index.JPG',
                                assetLabel: dairy[index],
                              );
                            }),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                right: 0,
                child: SliderBar(size: size, mainCategName: 'DAIRY'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
