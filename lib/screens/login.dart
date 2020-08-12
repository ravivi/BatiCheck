import 'package:BatiCheck/shared/customColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.height);
    print(MediaQuery.of(context).size.width);
     ScreenUtil.init(context, width: 1280.0, height: 844.0, allowFontScaling: false);
    return Scaffold(
      body: SingleChildScrollView(
              child: Container(
                height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            color: Colors.white,
            image: DecorationImage(
                image: AssetImage("assets/images/undraw_under_construction_46pa.png"),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.1), BlendMode.darken)),
          ),
          child: SingleChildScrollView(
                      child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 100),
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    image: DecorationImage(
                        image: AssetImage(
                      "assets/images/logo.png",
                    ))
                    
                  ),
                  height: 100.h,
                  width: 100.w,
                ),
                Text(
                  "BatiCheck",
                  style: TextStyle(
                      decoration: TextDecoration.none,
                      color: Colors.white,
                      fontSize: 40),
                ),
                SizedBox(
                  height: 80,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.person,
                        color: CustomColors.littleBlue,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 20),
                      margin: EdgeInsets.only(left: 15),
                      decoration: BoxDecoration(
                          color: Colors.white54,
                          borderRadius: BorderRadius.circular(40),
                          border: Border.all(color: Colors.white, width: 1)),
                      width: MediaQuery.of(context).size.width/2.8,
                      height: 50.h,
                      child: TextField(
                        textAlign: TextAlign.start,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Numero",
                            hintStyle: TextStyle(color: Colors.black)),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 60,
                ),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.visibility_off,
                        color: CustomColors.littleBlue,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 20),
                      margin: EdgeInsets.only(left: 15),
                      decoration: BoxDecoration(
                          color: Colors.white54,
                          borderRadius: BorderRadius.circular(40),
                          border: Border.all(color: Colors.white, width: 1)),
                      width: MediaQuery.of(context).size.width/2.8,
                      height: 50.h,
                      child: TextField(
                        textAlign: TextAlign.start,
                        obscureText: true,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Mot de Passe",
                            hintStyle: TextStyle(color: Colors.black)),
                      ),
                    ),
                  ],
                ),
                
               Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 50),
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
                    "Connexion",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: ScreenUtil().setSp(20),
                        fontWeight: FontWeight.w600),
                  ),
                ),
                 SizedBox(
                  height: 30,
                ),
             ],
            ),
          ),
        ),
      ),
    );
  }
}
