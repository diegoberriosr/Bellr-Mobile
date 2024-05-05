import 'package:bellr_mobile/constants/constants.dart';
import 'package:bellr_mobile/constants/ui_constants.dart';
import 'package:bellr_mobile/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Feed extends StatelessWidget {
  const Feed({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIConstants.mainAppBar(),
      body: const Text('to do', style: TextStyle( color : Pallete.blueColor, fontSize: 20)),
      bottomNavigationBar: Container(
        decoration : BoxDecoration(border: Border( top: BorderSide(color : Pallete.greyColor))),
        child: BottomAppBar(
          color : Pallete.backgroundColor,
          elevation : 0.0,
          height: 70,
          child : Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children : [
              IconButton( icon : SvgPicture.asset(AssetsConstants.homeOutlinedIcon, color: Pallete.whiteColor, height: 30), onPressed: (){}),
              IconButton ( icon : const Icon(Icons.mail_outline, color: Pallete.whiteColor), onPressed: () {}, iconSize: 30,),
              IconButton( icon : SvgPicture.asset(AssetsConstants.notifOutlinedIcon, color: Pallete.whiteColor, height: 30), onPressed: (){}),
              IconButton ( icon : const Icon(Icons.logout, color: Pallete.whiteColor), onPressed: () {}, iconSize: 30,)
            ]
          )
        ),
      ),
    );
  }
}