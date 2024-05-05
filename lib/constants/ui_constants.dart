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

  static AppBar mainAppBar() {
    return AppBar(
        title : Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
            SizedBox(
              height: 40,
              width: 40,
              child:  ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child:     Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmdEO-WBjXm2qQgz_Y26M0u5bAkBx9VfKJpraFwQNuuA&s',
              fit: BoxFit.fill, 
            )
            )
            ),
            SvgPicture.asset(
              AssetsConstants.twitterLogo,
              color : Pallete.blueColor,
              height: 30
            ),
            IconButton(onPressed: (){ /* TO-DO */}, icon: const Icon(Icons.settings))
        ]
      )
    );
  }
}