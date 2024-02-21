import 'package:cloudhub/config/test_device.dart';
import 'package:cloudhub/gui/page/main_tabs.dart';
import 'package:cloudhub/service/navigation/navigation_helper.dart';
import 'package:cloudhub/service/navigation/route_collector.dart';
import 'package:cloudhub/service/navigation/route_generator.dart';
import 'package:cloudhub/service/widget_helper/snackbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../service/provider/provider_manager.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    TestDevice device = TestDeviceCollection.mobile;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: RouteCollector.simpleRouteMap,
      initialRoute: RouteCollector.main,
      navigatorKey: NavigationHelper.key,
      onGenerateRoute: RouteGenerator.generateRoute,
      scaffoldMessengerKey: SnackbarHelper.key,
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider.value(value: ProviderManager.pageChangeProvider)
        ],
        child: ScreenUtilInit(
          designSize: Size(device.dp1, device.dp2),
          minTextAdapt: false,
          splitScreenMode: true,
          builder: (BuildContext context,Widget? widget) => const MainTabs(),
        ),
      )
    );
  }
}