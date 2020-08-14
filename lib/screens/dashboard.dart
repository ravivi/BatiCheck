import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../shared/customColors.dart';
import 'samples/pie_chart_sample2.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        width: 1280.0, height: 844.0, allowFontScaling: false);

    return Container(
      width: MediaQuery.of(context).size.width - 300.w,
      child: Padding(
        padding: EdgeInsets.only(
          top: ScreenUtil().setHeight(30),
         
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text("Tableau de Bord",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            ),
            Wrap(
              //mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(height: 720.h, width: 450.w, child: PieChartSample2()),
                Container(
                  width: 530.w,
                  
                  child: Wrap(
                    children: <Widget>[
                      Card(
                        elevation: 6,
                        child: Container(
                          height: 200.h,
                          width: 250.w,
                          color: CustomColors.lightGrey.withOpacity(.2),
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.all(ScreenUtil().setHeight(8.0)),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text(
                                      "Demande de Matériels",
                                      style: TextStyle(
                                          fontSize: ScreenUtil().setSp(17),
                                          fontWeight: FontWeight.bold),
                                    ),
                                    CircleAvatar(
                                      radius: ScreenUtil().setHeight(30),
                                      backgroundColor:
                                          CustomColors.littleBlue.withOpacity(.8),
                                      child: Icon(
                                        Icons.work,
                                        size: 18,
                                        color: Colors.white,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Text(
                                "20",
                                style: TextStyle(
                                    color: CustomColors.littleBlue.withOpacity(.8),
                                    fontWeight: FontWeight.w500,
                                    fontSize: ScreenUtil().setSp(40)),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        elevation: 6,
                        child: Container(
                          height: 200.h,
                          width: 250.w,
                          color: CustomColors.lightGrey.withOpacity(.2),
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.all(ScreenUtil().setHeight(8.0)),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text(
                                      "Pv D'avencement",
                                      style: TextStyle(
                                          fontSize: ScreenUtil().setSp(17),
                                          fontWeight: FontWeight.bold),
                                    ),
                                    CircleAvatar(
                                      radius: ScreenUtil().setHeight(30),
                                      backgroundColor:
                                          CustomColors.green.withOpacity(.8),
                                      child: Icon(
                                        Icons.edit,
                                        size: 18,
                                        color: Colors.white,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Text(
                                "10",
                                style: TextStyle(
                                    color: CustomColors.littleBlue.withOpacity(.8),
                                    fontWeight: FontWeight.w500,
                                    fontSize: ScreenUtil().setSp(40)),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Card(
                      elevation: 6,
                      child: Container(
                        height: 500.h,
                        width: 510.w,
                        color: CustomColors.lightGrey.withOpacity(.2),
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.all(ScreenUtil().setHeight(8.0)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    "Pv D'avencement",
                                    style: TextStyle(
                                        fontSize: ScreenUtil().setSp(17),
                                        fontWeight: FontWeight.bold),
                                  ),
                                  CircleAvatar(
                                    radius: ScreenUtil().setHeight(30),
                                    backgroundColor:
                                        CustomColors.green.withOpacity(.8),
                                    child: Icon(
                                      Icons.edit,
                                      size: 18,
                                      color: Colors.white,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Text(
                              "10",
                              style: TextStyle(
                                  color: CustomColors.littleBlue.withOpacity(.8),
                                  fontWeight: FontWeight.w500,
                                  fontSize: ScreenUtil().setSp(40)),
                            ),
                          ],
                        ),
                      ),
                    )
                  
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
