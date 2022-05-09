import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:locademo/pages/home_page.dart';


Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
      path: 'assets/translations',
      saveLocale: true,
      supportedLocales: [Locale('en', 'US'), Locale('kr', 'KR'), Locale('jp', 'JP'),],
      fallbackLocale: Locale('en', 'US'),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      supportedLocales: context.supportedLocales,
      localizationsDelegates: context.localizationDelegates,
      locale: context.locale,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity
      ),
      home: HomePage(),
    );
  }
}

