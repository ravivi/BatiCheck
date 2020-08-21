
import 'package:BatiCheck/screens/dashboard.dart';
import 'package:BatiCheck/screens/pv.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import '../shared/customColors.dart';
import '../providers/ItemNavigation.dart';
import '../screens/materiel.dart';

class AdminHome extends StatefulWidget {
  @override
  _AdminHomeState createState() => _AdminHomeState();
}

class _AdminHomeState extends State<AdminHome> {
  int ind = 0;

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        width: 1280.0, height: 844.0, allowFontScaling: false);

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
              child: Row(
          children: <Widget>[
            SingleChildScrollView(
                          child: Container(
                height: MediaQuery.of(context).size.height,
                width: 300.w,
                color: CustomColors.littleBlue,
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: ScreenUtil().setHeight(60),
                    ),
                    Container(
                      height: 100.h,
                      width: 100.w,
                      decoration: BoxDecoration(
                          color: Colors.white, shape: BoxShape.circle),
                      child: Image.asset(
                        'assets/images/logo.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      height: ScreenUtil().setHeight(50),
                    ),
                    Consumer<ListItem>(
                      builder: (context, catItem, _) => Container(
                        height: MediaQuery.of(context).size.height / 1.5,
                        child: ListView.builder(
                          itemCount: catItem.mesCat.length,
                          itemBuilder: (context, i) {
                            return Container(
                              margin: EdgeInsets.only(bottom: ScreenUtil().setHeight(20)),
                              padding: EdgeInsets.only(left: 10),
                              decoration: BoxDecoration(
                                  color: catItem.mesCat[i].isToggle
                                      ? Colors.white
                                      : Colors.transparent,
                                  borderRadius: BorderRadius.horizontal(
                                      left: Radius.circular(20))),
                              child: ListTile(
                                contentPadding: EdgeInsets.zero,
                                
                                onTap: () {
                                  catItem.selectedIndex(i);
                                  catItem.toggle(catItem.mesCat[i]);
                                  setState(() {
                                    this.ind = i;
                                  });
                                },
                                leading: Icon(
                                  catItem.mesCat[i].icon,
                                  size: 18,
                                  color: catItem.mesCat[i].isToggle
                                      ? CustomColors.lightBlue
                                      : Colors.white,
                                ),
                                title: Text(
                                  catItem.mesCat[i].nom,
                                  style: TextStyle(
                                      color: catItem.mesCat[i].isToggle
                                          ? CustomColors.lightBlue
                                          : Colors.white,
                                      fontSize: ScreenUtil().setSp(20)),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: IndexedStack(
                index: ind,
                children: <Widget>[
                  Dashboard(),
                  AdminMateriel(),
                  PV(),
                   Container(
                    color: Colors.yellow,
                    width: MediaQuery.of(context).size.width - 300.w,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
