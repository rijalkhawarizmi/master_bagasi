import 'package:flutter/material.dart';
import 'package:master_bagasi/util/color.dart';

class ButtonCartWidget extends StatelessWidget {
  const ButtonCartWidget(
      {Key? key,
      this.textColor,
      this.borderColor,
      this.backgroundColor,
      this.fontSizes,
      this.sizeIcon,
      this.heightButton})
      : super(key: key);
  final Color? textColor;
  final Color? borderColor;
  final Color? backgroundColor;
  final double? fontSizes;
  final double? sizeIcon;
  final double? heightButton;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(6),
        height: heightButton,
        decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(8),
            border:
                Border.all(color: borderColor ?? ColorApp.white, width: 1.6)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.add, size: sizeIcon, color: textColor),
            Text(
              'Keranjang',
              style: TextStyle(
                  fontSize: fontSizes,
                  fontWeight: FontWeight.w600,
                  color: textColor),
            )
          ],
        ));
  }
}
