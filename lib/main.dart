import 'package:flutter/material.dart';
 
import 'package:flutter/services.dart';

 // Paginas
import 'package:disenos/src/pages/navegacion_page.dart';
import 'package:disenos/src/pages/botones_page.dart';
import 'package:disenos/src/pages/basico_page.dart';
import 'package:disenos/src/pages/scroll_page.dart';

void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle( SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Colors.transparent,
      // statusBarIconBrightness: Brightness.light
    ));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Diseños',
      initialRoute: 'navegacion',
      routes: {
        'basico': ( BuildContext context ) => BasicoPage(),
        'scroll': ( BuildContext context ) => ScrollPage(),
        'botones': ( BuildContext context ) => BotonesPage(),
        'navegacion': ( BuildContext context ) => NavegacionPage(),
      },
    );
  }
}