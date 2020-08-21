import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../shared/customColors.dart';

class PV extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        width: 1280.0, height: 844.0, allowFontScaling: false);

    return Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(ScreenUtil().setHeight(50)),
        width: MediaQuery.of(context).size.width - 300.w,
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: SingleChildScrollView(
            child: Container(
              decoration: BoxDecoration(
                  color: CustomColors.littleBlue.withAlpha(40),
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: ScreenUtil().setHeight(50),
                  ),
                  Text(
                    "Rapport Journalier",
                    style: TextStyle(
                        fontSize: ScreenUtil().setSp(20),
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: ScreenUtil().setHeight(20),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Sujet',
                        style: TextStyle(
                            fontSize: ScreenUtil().setSp(15),
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: ScreenUtil().setHeight(10)),
                      Container(
                        alignment: Alignment.centerLeft,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 6.0,
                              offset: Offset(0, 2),
                            ),
                          ],
                        ),
                        height: 70.0.h,
                        width: MediaQuery.of(context).size.width / 2,
                        child: TextField(
                          style: TextStyle(
                            color: Colors.black,
                          ),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.only(
                                top: ScreenUtil().setHeight(14.0)),
                            prefixIcon: Icon(Icons.work,
                                size: ScreenUtil().setSp(30),
                                color: CustomColors.littleBlue),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: ScreenUtil().setHeight(30),
                  ),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Ajoutez des Photos",
                        style: TextStyle(
                            fontSize: ScreenUtil().setSp(15),
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: ScreenUtil().setHeight(10)),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 5),
                        width: MediaQuery.of(context).size.width / 2,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Container(
                              alignment: Alignment.center,
                              height: 100.h,
                              width: 100.w,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10.0),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 6.0,
                                    offset: Offset(0, 2),
                                  ),
                                ],
                              ),
                              child: IconButton(
                                icon: Icon(
                                  Icons.photo_camera,
                                  color: CustomColors.littleBlue,
                                  size: ScreenUtil().setSp(30),
                                ),
                                onPressed: () {},
                              ),
                            ),
                            Container(
                              alignment: Alignment.center,
                              height: 100.h,
                              width: 100.w,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10.0),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 6.0,
                                    offset: Offset(0, 2),
                                  ),
                                ],
                              ),
                              child: IconButton(
                                icon: Icon(
                                  Icons.photo_camera,
                                  color: CustomColors.littleBlue,
                                  size: ScreenUtil().setSp(30),
                                ),
                                onPressed: () {},
                              ),
                            ),
                            Container(
                              alignment: Alignment.center,
                              height: 100.h,
                              width: 100.w,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10.0),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 6.0,
                                    offset: Offset(0, 2),
                                  ),
                                ],
                              ),
                              child: IconButton(
                                icon: Icon(
                                  Icons.photo_camera,
                                  color: CustomColors.littleBlue,
                                  size: ScreenUtil().setSp(30),
                                ),
                                onPressed: () {},
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  SizedBox(
                    height: ScreenUtil().setHeight(30),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Qu'avez vous fait aujourd'hui?",
                        style: TextStyle(
                            fontSize: ScreenUtil().setSp(15),
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: ScreenUtil().setHeight(10)),
                      Container(
                        alignment: Alignment.topLeft,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 6.0,
                              offset: Offset(0, 2),
                            ),
                          ],
                        ),
                        padding: EdgeInsets.symmetric(vertical: 5),
                        constraints: BoxConstraints(minHeight: 120.h),
                        width: MediaQuery.of(context).size.width / 2,
                        child: TextField(
                          keyboardType: TextInputType.multiline,
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'OpenSans',
                          ),
                          maxLines: null,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.only(
                                top: ScreenUtil().setHeight(14.0)),
                            prefixIcon: Icon(
                              Icons.edit,
                              size: ScreenUtil().setSp(30),
                              color: CustomColors.littleBlue,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, 'adminhome');
                    },
                    child: Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top: ScreenUtil().setHeight(50)),
                      width: 250.w,
                      height: 56.h,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                CustomColors.littleBlue,
                                CustomColors.littleBlue.withAlpha(100)
                              ]),
                          borderRadius: BorderRadius.circular(30)),
                      child: Text(
                        "Envoyer",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: ScreenUtil().setSp(20),
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: ScreenUtil().setHeight(50),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
