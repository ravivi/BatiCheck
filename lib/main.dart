



import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import './shared/customColors.dart';
import './screens/admin_home.dart';
import './screens/materiel.dart';
import './providers/ItemNavigation.dart';
import './screens/login.dart';
import './screens/pie_chart_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeRight]);
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    // systemNavigationBarColor: Colors.white, // navigation bar color
    statusBarColor: CustomColors.littleBlue, // status bar color
  ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: ListItem()),
      ],
          child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: LoginScreen(),
        //home: PieChartPage(),
        routes: {
          'adminhome':(context)=> AdminHome(),
          'adminmateriel':(context)=> AdminMateriel(),
        },
      ),
    );
  }
}
