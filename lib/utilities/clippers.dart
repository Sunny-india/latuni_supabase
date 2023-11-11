import 'package:flutter/material.dart';

class ParchiBottom extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    Path path = Path();
    path.moveTo(size.width * .1, 0);
    path.quadraticBezierTo(0, 0, 0, size.height * .2);
    path.lineTo(0, size.height);
    //zigzag starts here
    /// not working
    for (double i = 1; i <= 100; i++) {
      // print(i / 100);
      if (i % 2 == 0) {
        path.lineTo(size.width * (i / 100), size.height);
      } else {
        path.lineTo(size.width * (i / 100), size.height * .95);
      }
    }
    // path.lineTo(size.width * .01, size.height * .95);
    // path.lineTo(size.width * .02, size.height);
    // path.lineTo(size.width * .03, size.height * .95);
    // path.lineTo(size.width * .04, size.height);
    // path.lineTo(size.width * .05, size.height * .95);
    // path.lineTo(size.width * .06, size.height);
    // path.lineTo(size.width * .07, size.height * .95);
    // path.lineTo(size.width * .08, size.height);
    // path.lineTo(size.width * .09, size.height * .95);
    // path.lineTo(size.width * .1, size.height);
    // path.lineTo(size.width * .11, size.height * .95);
    // path.lineTo(size.width * .12, size.height);
    // path.lineTo(size.width * .13, size.height * .95);
    // path.lineTo(size.width * .14, size.height);
    // path.lineTo(size.width * .15, size.height * .95);
    // path.lineTo(size.width * .16, size.height);
    // path.lineTo(size.width * .17, size.height * .95);
    // path.lineTo(size.width * .18, size.height);
    // path.lineTo(size.width * .19, size.height * .95);
    // path.lineTo(size.width * .2, size.height);
    // path.lineTo(size.width * .21, size.height * .95);
    // path.lineTo(size.width * .22, size.height);
    // path.lineTo(size.width * .23, size.height * .95);
    // path.lineTo(size.width * .24, size.height);
    // path.lineTo(size.width * .25, size.height * .95);
    // path.lineTo(size.width * .26, size.height);
    // path.lineTo(size.width * .27, size.height * .95);
    // path.lineTo(size.width * .28, size.height);
    // path.lineTo(size.width * .29, size.height * .95);
    // path.lineTo(size.width * .3, size.height);
    // path.lineTo(size.width * .31, size.height * .95);
    // path.lineTo(size.width * .32, size.height);
    // path.lineTo(size.width * .33, size.height * .95);
    // path.lineTo(size.width * .34, size.height);
    // path.lineTo(size.width * .35, size.height * .95);
    // path.lineTo(size.width * .36, size.height);
    // path.lineTo(size.width * .37, size.height * .95);
    // path.lineTo(size.width * .38, size.height);
    // path.lineTo(size.width * .39, size.height * .95);
    // path.lineTo(size.width * .4, size.height);
    // path.lineTo(size.width * .41, size.height * .95);
    // path.lineTo(size.width * .42, size.height);
    // path.lineTo(size.width * .43, size.height * .95);
    // path.lineTo(size.width * .44, size.height);
    // path.lineTo(size.width * .45, size.height * .95);
    // path.lineTo(size.width * .46, size.height);
    // path.lineTo(size.width * .47, size.height * .95);
    // path.lineTo(size.width * .48, size.height);
    // path.lineTo(size.width * .49, size.height * .95);
    // path.lineTo(size.width * .5, size.height);
    // path.lineTo(size.width * .51, size.height * .95);
    // path.lineTo(size.width * .52, size.height);
    // path.lineTo(size.width * .53, size.height * .95);
    // path.lineTo(size.width * .54, size.height);
    // path.lineTo(size.width * .55, size.height * .95);
    // path.lineTo(size.width * .56, size.height);
    // path.lineTo(size.width * .57, size.height * .95);
    // path.lineTo(size.width * .58, size.height);
    // path.lineTo(size.width * .59, size.height * .95);
    // path.lineTo(size.width * .6, size.height);
    // path.lineTo(size.width * .61, size.height * .95);
    // path.lineTo(size.width * .62, size.height);
    // path.lineTo(size.width * .63, size.height * .95);
    // path.lineTo(size.width * .64, size.height);
    // path.lineTo(size.width * .65, size.height * .95);
    // path.lineTo(size.width * .66, size.height);
    // path.lineTo(size.width * .67, size.height * .95);
    // path.lineTo(size.width * .68, size.height);
    // path.lineTo(size.width * .69, size.height * .95);
    // path.lineTo(size.width * .7, size.height);
    // path.lineTo(size.width * .71, size.height * .95);
    // path.lineTo(size.width * .72, size.height);
    // path.lineTo(size.width * .73, size.height * .95);
    // path.lineTo(size.width * .74, size.height);
    // path.lineTo(size.width * .75, size.height * .95);
    // path.lineTo(size.width * .76, size.height);
    // path.lineTo(size.width * .77, size.height * .95);
    // path.lineTo(size.width * .78, size.height);
    // path.lineTo(size.width * .79, size.height * .95);
    // path.lineTo(size.width * .8, size.height);
    // path.lineTo(size.width * .81, size.height * .95);
    // path.lineTo(size.width * .82, size.height);
    // path.lineTo(size.width * .83, size.height * .95);
    // path.lineTo(size.width * .84, size.height);
    // path.lineTo(size.width * .85, size.height * .95);
    // path.lineTo(size.width * .86, size.height);
    // path.lineTo(size.width * .87, size.height * .95);
    // path.lineTo(size.width * .88, size.height);
    // path.lineTo(size.width * .89, size.height * .95);
    // path.lineTo(size.width * .9, size.height);
    // path.lineTo(size.width * .91, size.height * .95);
    // path.lineTo(size.width * .92, size.height);
    // path.lineTo(size.width * .93, size.height * .95);
    // path.lineTo(size.width * .94, size.height);
    // path.lineTo(size.width * .95, size.height * .95);
    // path.lineTo(size.width * .96, size.height);
    // path.lineTo(size.width * .97, size.height * .95);
    // path.lineTo(size.width * .98, size.height);
    // path.lineTo(size.width * .99, size.height * .95);
    // path.lineTo(size.width, size.height);

    //zigzag ends here
    // path.lineTo(size.width, size.height);
    path.lineTo(size.width, size.height * .20);
    path.quadraticBezierTo(size.width, 0, size.width * .9, 0);

    // path.lineTo(size.width * .1, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}

class RightClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    Path path = Path();
    path.moveTo(size.width * .2, 0);
    path.quadraticBezierTo(0, 0, 0, size.height * .1);
    path.lineTo(0, size.height * .9);
    path.quadraticBezierTo(0, size.height, size.width * .2, size.height);
    path.lineTo(size.width, size.height);
    // zigzag starts here
    for (int i = 98; i >= 0; i -= 2) {
      if (i % 4 != 0) {
        path.lineTo(size.width * .9, size.height * (i / 100));
      } else {
        path.lineTo(size.width, size.height * (i / 100));
      }
    }
    // path.lineTo(size.width * .9, size.height * .98);
    // path.lineTo(size.width, size.height * .96);
    // path.lineTo(size.width * .9, size.height * .94);
    // path.lineTo(size.width, size.height * .92);
    // path.lineTo(size.width * .9, size.height * .9);
    // path.lineTo(size.width, size.height * .88);
    // path.lineTo(size.width * .9, size.height * .86);
    // path.lineTo(size.width, size.height * .84);
    // path.lineTo(size.width * .9, size.height * .82);
    // path.lineTo(size.width, size.height * .8);
    // path.lineTo(size.width * .9, size.height * .78);
    // path.lineTo(size.width, size.height * .76);
    // path.lineTo(size.width * .9, size.height * .74);
    // path.lineTo(size.width, size.height * .72);
    // path.lineTo(size.width * .9, size.height * .7);
    // path.lineTo(size.width, size.height * .68);
    // path.lineTo(size.width * .9, size.height * .66);
    // path.lineTo(size.width, size.height * .64);
    // path.lineTo(size.width * .9, size.height * .62);
    // path.lineTo(size.width, size.height * .6);
    //
    // path.lineTo(size.width * .9, size.height * .58);
    // path.lineTo(size.width, size.height * .56);
    // path.lineTo(size.width * .9, size.height * .54);
    // path.lineTo(size.width, size.height * .52);
    // path.lineTo(size.width * .9, size.height * .5);
    // path.lineTo(size.width, size.height * .48);
    // path.lineTo(size.width * .9, size.height * .46);
    // path.lineTo(size.width, size.height * .44);
    // path.lineTo(size.width * .9, size.height * .42);
    // path.lineTo(size.width, size.height * .4);
    // path.lineTo(size.width * .9, size.height * .38);
    // path.lineTo(size.width, size.height * .36);
    // path.lineTo(size.width * .9, size.height * .34);
    // path.lineTo(size.width, size.height * .32);
    // path.lineTo(size.width * .9, size.height * .3);
    // path.lineTo(size.width, size.height * .28);
    // path.lineTo(size.width * .9, size.height * .26);
    // path.lineTo(size.width, size.height * .24);
    // path.lineTo(size.width * .9, size.height * .22);
    // path.lineTo(size.width, size.height * .2);
    // path.lineTo(size.width * .9, size.height * .18);
    // path.lineTo(size.width, size.height * .16);
    // path.lineTo(size.width * .9, size.height * .14);
    // path.lineTo(size.width, size.height * .12);
    // path.lineTo(size.width * .9, size.height * .1);
    // path.lineTo(size.width, size.height * .08);
    // path.lineTo(size.width * .9, size.height * .06);
    // path.lineTo(size.width, size.height * .04);
    // path.lineTo(size.width * .9, size.height * .02);
    // path.lineTo(size.width, size.height * .01);

    //zigzag ends here
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}

class LeftClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double endingWidth = size.width * .07;
    // TODO: implement getClip
    Path path = Path();
    // zigzag starts here
    for (int i = 1; i <= 99; i += 1) {
      if (i % 2 == 0) {
        path.lineTo(endingWidth, size.height * (i / 100));
      } else {
        path.lineTo(0, size.height * (i / 100));
      }
    }

    // path.lineTo(endingWidth, size.height * .01);//2
    // path.lineTo(0, size.height * .03);          //4
    // path.lineTo(endingWidth, size.height * .05);
    // path.lineTo(0, size.height * .07);
    // path.lineTo(endingWidth, size.height * .09);
    // path.lineTo(0, size.height * .11);
    // path.lineTo(endingWidth, size.height * .13);
    // path.lineTo(0, size.height * .15);
    // path.lineTo(endingWidth, size.height * .17);
    // path.lineTo(0, size.height * .19);
    // path.lineTo(endingWidth, size.height * .21);
    // path.lineTo(0, size.height * .23);
    // path.lineTo(endingWidth, size.height * .25);
    // path.lineTo(0, size.height * .27);
    // path.lineTo(endingWidth, size.height * .29);
    // path.lineTo(0, size.height * .31);
    // path.lineTo(endingWidth, size.height * .33);
    // path.lineTo(0, size.height * .35);
    // path.lineTo(endingWidth, size.height * .37);
    // path.lineTo(0, size.height * .39);
    // path.lineTo(endingWidth, size.height * .41);
    // path.lineTo(0, size.height * .43);
    // path.lineTo(endingWidth, size.height * .45);
    // path.lineTo(0, size.height * .47);
    // path.lineTo(endingWidth, size.height * .49);
    // path.lineTo(0, size.height * .51);
    // path.lineTo(endingWidth, size.height * .53);
    // path.lineTo(0, size.height * .55);
    // path.lineTo(endingWidth, size.height * .57);
    // path.lineTo(0, size.height * .59);
    // path.lineTo(endingWidth, size.height * .61);
    // path.lineTo(0, size.height * .63);
    // path.lineTo(endingWidth, size.height * .65);
    // path.lineTo(0, size.height * .67);
    // path.lineTo(endingWidth, size.height * .69);
    // path.lineTo(0, size.height * .71);
    // path.lineTo(endingWidth, size.height * .73);
    // path.lineTo(0, size.height * .75);
    // path.lineTo(endingWidth, size.height * .77);
    // path.lineTo(0, size.height * .79);
    // path.lineTo(endingWidth, size.height * .81);
    // path.lineTo(0, size.height * .83);
    // path.lineTo(endingWidth, size.height * .85);
    // path.lineTo(0, size.height * .87);
    // path.lineTo(endingWidth, size.height * .89);
    // path.lineTo(0, size.height * .91);
    // path.lineTo(endingWidth, size.height * .93);
    // path.lineTo(0, size.height * .95);
    // path.lineTo(endingWidth, size.height * .97);
    // path.lineTo(0, size.height * .99);

    // zigzag ends here
    path.lineTo(0, size.height);
    path.lineTo(size.width * .8, size.height);
    path.quadraticBezierTo(
        size.width, size.height, size.width, size.height * .9);
    path.lineTo(size.width, size.height * .1);
    // path.quadraticBezierTo(size.width, 0, size.width * .9, 0);
    path.quadraticBezierTo(
        size.width * .85, size.height * .1, size.width * .85, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}
