import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../shared/customColors.dart';

class PV extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        width: 1280.0, height: 844.0, allowFontScaling: false);

    return Container(
      color: Colors.cyan,
      width: MediaQuery.of(context).size.width - 300.w,
    );
  }
}
