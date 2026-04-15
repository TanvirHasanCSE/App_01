import 'package:flutter/material.dart';
import 'package:module_15/screen/login_page_screen.dart';
import 'package:module_15/screen/main_nab_bar_holder_screen.dart';
import 'package:module_15/screen/splase_screen.dart';

class TaskMangerApp extends StatelessWidget {
  const TaskMangerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        // appBarTheme: AppBar(
        //   backgroundColor: Colors.green,
        //   foregroundColor: Colors.white,
        // ),
        textTheme: TextTheme(
          titleLarge: TextStyle(
              color: Colors.black,
              fontSize: 30,
              fontWeight: FontWeight.bold
          )
        ),
        inputDecorationTheme: InputDecorationTheme(
            fillColor: Colors.white,
            filled: true,
            contentPadding: EdgeInsets.symmetric(
              horizontal: 16,
            ),
            hintStyle: TextStyle(
                color: Colors.grey
            ),
            border: OutlineInputBorder(
                borderSide: BorderSide.none
            )
        ),
        filledButtonTheme: FilledButtonThemeData(
          style: FilledButton.styleFrom(
              backgroundColor: Colors.green,
              fixedSize: Size.fromWidth(double.maxFinite),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              )
          ),
        )
      ),

      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
