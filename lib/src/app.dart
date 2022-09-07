import 'package:flutter/material.dart';
import 'package:componentes_widgets/src/routes/route.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi app',
      debugShowCheckedModeBanner: false,
      // temas para los appbar
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        // ignore: prefer_const_constructors
        appBarTheme: AppBarTheme(
          color: Color.fromRGBO(18, 140,126, 1),
        ),
        bottomSheetTheme: BottomSheetThemeData(backgroundColor: Colors.black.withOpacity(0)),
      ),
      localizationsDelegates: [
   // AppLocalizations.delegate, // Add this line
    GlobalMaterialLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
  ],
  supportedLocales: [
    Locale('en', ''), // English, no country code
    Locale('es', ''), // Spanish, no country code
  ],
      // home: Scaffold(appBar: AppBar(title: Text('lista test')),
      // body: HomePageTemp(),
    initialRoute: '/',
    routes: getAplcationRoutes(),
  
    // onGenerateRoute: (settings) {

    //   print(' ruta ${(settings.name)}');
    //   return MaterialPageRoute(builder: (BuildContext context) => CardPage());
    // },
      // ),
      // home: HomePage(),
    );
  }
}
