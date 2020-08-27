import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:navaninew/DrawerScreen.dart';
import 'package:navaninew/constants.dart';
import 'package:navaninew/navigation_bloc.dart';
import 'package:theme_provider/theme_provider.dart';

void main() => runApp(HomePage());

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return ThemeProvider(
    //   themes: [
    //     AppTheme
    //         .light(), // This is standard light theme (id is default_light_theme)
    //     AppTheme
    //         .dark(), // This is standard dark theme (id is default_dark_theme)
    //     AppTheme(
    //       id: "custom_theme", // Id(or name) of the theme(Has to be unique)
    //       data: ThemeData(
    //         // Real theme data
    //         primaryColor: Colors.black,
    //         accentColor: Colors.red,
    //       ),
    //     ),
    //   ],
    //   child: ThemeConsumer(
    //     child: Builder(
    //       builder: (themeContext) => MaterialApp(
    //         debugShowCheckedModeBanner: false,
    //         theme: ThemeProvider.themeOf(themeContext).data,
    //         title: 'Material App',
    //         home: Scaffold(
    //           body: BlocProvider<NavigationBloc>(
    //             create: (context) => NavigationBloc(),
    //             child: Stack(
    //               children: <Widget>[
    //                 DrawerScreen(),
    //                 BlocBuilder<NavigationBloc, NavigationState>(
    //                   builder: (context, navigationState) {
    //                     return navigationState as Widget;
    //                   },
    //                 ),
    //               ],
    //             ),
    //           ),
    //         ),
    //       ),
    //     ),
    //   ),
    // );
    // return ThemeProvider(
    //   initTheme: kDarkTheme,
    //   child: Builder(
    //     builder: (context) {
    //       return MaterialApp(
    //         debugShowCheckedModeBanner: false,
    //         theme: ThemeProvider.themeOf(themeContext).data,
    //         home: Scaffold(
    //     body: BlocProvider<NavigationBloc>(
    //       create: (context) => NavigationBloc(),
    //       child: Stack(
    //         children: <Widget>[
    //           DrawerScreen(),
    //           BlocBuilder<NavigationBloc, NavigationState>(
    //             builder: (context, navigationState) {
    //               return navigationState as Widget;
    //             },
    //           ),
    //         ],
    //       ),
    //     ),
    //   ),
    //       );
    //     },
    //   ),
    // );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: BlocProvider<NavigationBloc>(
          create: (context) => NavigationBloc(),
          child: Stack(
            children: <Widget>[
              DrawerScreen(),
              BlocBuilder<NavigationBloc, NavigationState>(
                builder: (context, navigationState) {
                  return navigationState as Widget;
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
