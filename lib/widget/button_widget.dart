import 'package:flutter/material.dart';

import '../style/aoo_colos.dart';
import 'app_text_widge.dart';

class ResponsiveButton extends StatelessWidget {
  final double? width;
  final bool? isResponsive;
  const ResponsiveButton({
    Key? key,
    this.width = 120,
    this.isResponsive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        width: isResponsive == true ? double.maxFinite : width,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.mainColor,
        ),
        child: Row(
          mainAxisAlignment: isResponsive == true
              ? MainAxisAlignment.spaceBetween
              : MainAxisAlignment.center,
          children: [
            isResponsive == true
                ? Container(
                    margin: EdgeInsets.only(left: 20),
                    child: AppText(
                      text: "Book Trip Now",
                      color: Colors.white,
                      size: 18,
                    ))
                : Container(),
            Image.asset("assets/img/button-one.png"),
          ],
        ),
      ),
    );
  }
}
