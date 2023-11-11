import 'package:flutter/material.dart';

import '../minor_screens/sub_category_page.dart';

class CategoryHeaderLabel extends StatelessWidget {
  const CategoryHeaderLabel({super.key, required this.headerLabel});
  final String headerLabel;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Container(
      height: size.height * .05,
      alignment: Alignment.centerLeft,
      // color: Colors.lime,
      padding: const EdgeInsets.only(left: 5, top: 3),
      child: FittedBox(
        child: Text(
          headerLabel,
          style: const TextStyle(fontSize: 24, letterSpacing: 20),
        ),
      ),
    );
  }
}

class SubCategoryModel extends StatelessWidget {
  const SubCategoryModel(
      {super.key,
      required this.mainCategoryName,
      required this.subCategoryName,
      required this.assetName,
      required this.assetLabel});
  final String mainCategoryName;
  final String subCategoryName;
  final String assetName;
  final String assetLabel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          // We'll send the first name from the category list here
          // so that it might lead to the relevant sub-category name there
          // and will show other details there
          return SubCategoryPage(
            mainCategoryName: mainCategoryName,
            subCategoryName: subCategoryName,
          );
        }));
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: SizedBox(
              height: 80,
              width: 80,
              child: Image(
                image: AssetImage(
                  assetName,
                ),
                fit: BoxFit.contain,
                filterQuality: FilterQuality.high,
              ),
            ),
          ),
          FittedBox(
            child: Text(
              assetLabel,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ), // see the comments over there, if need be
        ],
      ),
    );
  }
}

class SliderBar extends StatelessWidget {
  const SliderBar({super.key, required this.size, required this.mainCategName});

  final Size size;
  final String mainCategName;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height * .8,
      width: size.width * .05,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          color: Colors.brown.shade100,
          borderRadius: BorderRadius.circular(20),
        ),
        child: RotatedBox(
          quarterTurns: 3,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              mainCategName == 'CLOTHING' ? const Text('') : const Text('<<'),
              Text(
                mainCategName,
                textAlign: TextAlign.center,
                textScaleFactor: 1.3,
                style: const TextStyle(fontSize: 14),
              ),
              mainCategName == 'KISAN BHAI' ? const Text('') : const Text('>>'),
            ],
          ),
        ),
      ),
    );
  }
}
