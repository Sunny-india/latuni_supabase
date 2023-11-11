import 'package:flutter/material.dart';

import '../minor_screens/search_page.dart';

class FakeSearch extends StatelessWidget {
  const FakeSearch({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const SearchPage();
        }));
      },
      child: Container(
        height: 45,
        width: size.width * .9,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          // border: Border.all(color: Colors.yellow),
          color: Colors.grey.shade100,
          boxShadow: [
            const BoxShadow(
              offset: Offset(-2, -2),
              color: Colors.white,
              spreadRadius: 1,
              blurRadius: 1,
            ),
            BoxShadow(offset: const Offset(2, 2), color: Colors.grey.shade300),
          ],
        ),
        child: Row(
          children: [
            const Expanded(
                flex: 1,
                child: Icon(
                  Icons.search,
                  color: Colors.red,
                )),
            const Expanded(
              flex: 5,
              child: Text(
                'What\'re you looking for? ',
                style: TextStyle(fontSize: 14, color: Colors.red),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                height: 44,
                width: 75,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.red.withOpacity(.1),
                    borderRadius: BorderRadius.circular(16)),
                child: const Text(
                  'Search',
                  style: TextStyle(fontSize: 13, color: Colors.red),
                ),
              ),
            ),
          ],
        ),
      ),
      //   searchContainer(size),
    );
  }
}
