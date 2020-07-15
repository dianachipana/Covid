import 'package:covid/pages/theme/app_theme.dart';
import 'package:covid/routing_constants.dart';
import 'package:flutter/material.dart';
import 'router.dart' as router;
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('Pintando Material App');
          return MaterialApp(
            title: 'Platia',
            theme: AppTheme.lightTheme,
            /* theme: AppTheme.lightTheme, */
            debugShowCheckedModeBanner: false,
            onGenerateRoute: router.generateRoute,
             initialRoute: LoginViewRoute
           /*  initialRoute: initRoute, *///CreatePasswordViewRoute,
          ); 
  
  }
}