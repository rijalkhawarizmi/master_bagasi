

import 'package:flutter/material.dart';
import 'package:master_bagasi/presentation/widgets/button_cart_widget.dart';

import '../../util/assets.dart';
import '../../util/color.dart';

class BottomNavigationBarWidget extends StatelessWidget {
  const BottomNavigationBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          height: 80,
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.all(6),
                height: 44,
                width: 56,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: ColorApp.black, width: 1.6)),
                child: Image.asset(
                  AssetsConstant.chat2,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(6),
                  height: 44,
                  // width: 56,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: ColorApp.black, width: 1.6)),
                  child: Center(
                    child: Text(
                      'Beli Lansung',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                  child: ButtonCartWidget(
                textColor: ColorApp.white,
                borderColor: ColorApp.black,
                backgroundColor: ColorApp.black,
                fontSizes: 16,
                heightButton: 44,
              ))
            ],
          ),
        );
  }
}