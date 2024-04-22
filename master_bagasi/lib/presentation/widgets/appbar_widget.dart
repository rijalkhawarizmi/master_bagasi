import 'package:flutter/material.dart';

import '../../util/assets.dart';
import '../../util/color.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({Key? key, required this.icon}) : super(key: key);
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      height: 48,
      width: 48,
      decoration: BoxDecoration(
        color: ColorApp.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Image.asset(
        icon,
      ),
    );
  }
}
