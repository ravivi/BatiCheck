import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../shared/customColors.dart';

class AdminMateriel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        width: 1280.0, height: 844.0, allowFontScaling: false);

    return Container(
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width - 300.w,
      child:Image.asset("assets/images/maintenance-img.png"),
    );
  }
}
