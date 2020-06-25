import 'package:covid/routing_constants.dart';
import 'package:flutter/material.dart';
import 'router.dart' as router;
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('Pintando Material App');
          return MaterialApp(
            title: 'Platia',
            /* theme: AppTheme.lightTheme, */
            debugShowCheckedModeBanner: false,
            //darkTheme: darkTheme(),
            //themeMode: ThemeMode.system, //Por defecto el color lo define el sistema.
            onGenerateRoute: router.generateRoute,
             initialRoute: LoginViewRoute
           /*  initialRoute: initRoute, *///CreatePasswordViewRoute,
          ); 
  
  }
}