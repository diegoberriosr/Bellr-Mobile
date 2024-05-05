import 'package:bellr_mobile/theme/pallete.dart';
import 'package:flutter/material.dart';

class RoundedSmallButton extends StatelessWidget {
  final VoidCallback onTap;
  final String label;
  final Color backgroundColor;
  final Color fontColor;
  final bool loading;

  const RoundedSmallButton({
    super.key, 
    required this.label, 
    required this.onTap,
    this.backgroundColor = Pallete.whiteColor,
    this.fontColor = Pallete.backgroundColor,
    required this.loading
    });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
    onPressed: onTap, 
    style: ElevatedButton.styleFrom(
      shape : RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20)
      ),
      backgroundColor: backgroundColor
    ),
    child: loading ? 
    const CircularProgressIndicator( color : Pallete.blueColor, strokeWidth: 2.5,)
    :
    Text( label, style: TextStyle(
      color : fontColor,
      fontSize: 16
    )));
  }
}