import 'package:bellr_mobile/theme/pallete.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:bellr_mobile/constants/constants.dart';

class UIConstants {
  static AppBar appBar() {

   return AppBar(
      title : SvgPicture.asset(
        AssetsConstants.twitterLogo,
        color : Pallete.blueColor,
        height: 30
        ),
        centerTitle: true,

    );
  }
}