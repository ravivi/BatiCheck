import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../shared/customColors.dart';
import 'samples/pie_chart_sample2.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        width: 1280.0, height: 844.0, allowFontScaling: false);

    return SingleChildScrollView(
      child: Container(
        width: MediaQuery.of(context).size.width - 300.w,
        child: Padding(
          padding: EdgeInsets.only(
            top: ScreenUtil().setHeight(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(
                  left: ScreenUtil().setHeight(10),
                  bottom: ScreenUtil().setHeight(10),
                ),
                child: Text(
                  "Tableau de Bord",
                  style: TextStyle(
                      fontSize: ScreenUtil().setSp(20),
                      fontWeight: FontWeight.bold),
                ),
              ),
              Wrap(
                //mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  SizedBox(
                    width: ScreenUtil().setHeight(40),
                  ),
                  Container(
                      height: 730.h, width: 410.w, child: PieChartSample2()),
                  Container(
                    width: 530.w,
                    child: Wrap(
                      children: <Widget>[
                        Card(
                          elevation: 4,
                          child: Container(
                            height: 200.h,
                            width: 220.w,
                            color: CustomColors.lightGrey.withOpacity(.2),
                            child: Column(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(
                                      top: ScreenUtil().setHeight(18),
                                      left: ScreenUtil().setHeight(10)),
                                  child: Row(
                                    children: <Widget>[
                                      CircleAvatar(
                                        radius: ScreenUtil().setHeight(30),
                                        backgroundColor: CustomColors.littleBlue
                                            .withOpacity(.8),
                                        child: Icon(
                                          Icons.work,
                                          size: 18,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Text(
                                  "20",
                                  style: TextStyle(
                                      color: CustomColors.littleBlue
                                          .withOpacity(.8),
                                      fontWeight: FontWeight.w500,
                                      fontSize: ScreenUtil().setSp(40)),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Demande de Matériels",
                                  style: TextStyle(
                                      fontSize: ScreenUtil().setSp(17),
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Card(
                          elevation: 4,
                          child: Container(
                            height: 200.h,
                            width: 220.w,
                            color: CustomColors.lightGrey.withOpacity(.2),
                            child: Column(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(
                                      top: ScreenUtil().setHeight(18),
                                      left: ScreenUtil().setHeight(10)),
                                  child: Row(
                                    children: <Widget>[
                                      CircleAvatar(
                                        radius: ScreenUtil().setHeight(30),
                                        backgroundColor:
                                            CustomColors.green.withOpacity(.8),
                                        child: Icon(
                                          Icons.edit,
                                          size: 18,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Text(
                                  "5",
                                  style: TextStyle(
                                      color: CustomColors.littleBlue
                                          .withOpacity(.8),
                                      fontWeight: FontWeight.w500,
                                      fontSize: ScreenUtil().setSp(40)),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Pv D'avencement",
                                  style: TextStyle(
                                      fontSize: ScreenUtil().setSp(17),
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Card(
                          elevation: 4,
                          child: Container(
                            height: 515.h,
                            width: 450.w,
                            color: CustomColors.lightGrey.withOpacity(.2),
                            child: Column(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: ScreenUtil().setHeight(10),
                                      top: ScreenUtil().setHeight(18)),
                                  child: Row(
                                    children: <Widget>[
                                      CircleAvatar(
                                        radius: ScreenUtil().setHeight(30),
                                        backgroundColor:
                                            CustomColors.yellow.withOpacity(.8),
                                        child: Icon(
                                          Icons.equalizer,
                                          size: 18,
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 4,
                                      ),
                                      Text(
                                        "Liste des affectations",
                                        style: TextStyle(
                                            fontSize: ScreenUtil().setSp(17),
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: ScreenUtil().setHeight(10),
                                ),
                                Expanded(
                                    child: ListView(
                                  children: <Widget>[
                                    ListTile(
                                      title: Text(
                                        "Main d'oeuvre",
                                        style: TextStyle(
                                          fontSize: ScreenUtil().setSp(17),
                                        ),
                                      ),
                                      trailing: Container(
                                        padding: EdgeInsets.all(
                                            ScreenUtil().setHeight(10)),
                                        decoration: BoxDecoration(
                                            color: CustomColors.red,
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: Text("80000 FCFA",
                                            style: TextStyle(
                                                fontSize:
                                                    ScreenUtil().setSp(17),
                                                color: Colors.white)),
                                      ),
                                    ),
                                    ListTile(
                                      title: Text(
                                        "Carburant",
                                        style: TextStyle(
                                          fontSize: ScreenUtil().setSp(17),
                                        ),
                                      ),
                                      trailing: Container(
                                        padding: EdgeInsets.all(
                                            ScreenUtil().setHeight(10)),
                                        decoration: BoxDecoration(
                                            color: CustomColors.red,
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: Text("150000 FCFA",
                                            style: TextStyle(
                                                fontSize:
                                                    ScreenUtil().setSp(17),
                                                color: Colors.white)),
                                      ),
                                    ),
                                    ListTile(
                                      title: Text(
                                        "Logement",
                                        style: TextStyle(
                                          fontSize: ScreenUtil().setSp(17),
                                        ),
                                      ),
                                      trailing: Container(
                                        padding: EdgeInsets.all(
                                            ScreenUtil().setHeight(10)),
                                        decoration: BoxDecoration(
                                            color: CustomColors.red,
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: Text("150000 FCFA",
                                            style: TextStyle(
                                                fontSize:
                                                    ScreenUtil().setSp(17),
                                                color: Colors.white)),
                                      ),
                                    ),
                                    ListTile(
                                      title: Text(
                                        "Materiaux & fourniture",
                                        style: TextStyle(
                                          fontSize: ScreenUtil().setSp(17),
                                        ),
                                      ),
                                      trailing: Container(
                                        padding: EdgeInsets.all(
                                            ScreenUtil().setHeight(10)),
                                        decoration: BoxDecoration(
                                            color: CustomColors.red,
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: Text("150000 FCFA",
                                            style: TextStyle(
                                                fontSize:
                                                    ScreenUtil().setSp(17),
                                                color: Colors.white)),
                                      ),
                                    ),
                                    SizedBox(
                                      height: ScreenUtil().setHeight(10),
                                    ),
                                    
                                  ],
                                ))
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
      ),
    );
  }
}
