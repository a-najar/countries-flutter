import 'package:flutter/material.dart';

ThemeData appTheme(context) => ThemeData(
      primaryColor: Colors.white,
      accentColor: Colors.cyan,
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: AppBarTheme(
        elevation: 0,
        textTheme: Theme.of(context).textTheme.copyWith(
                title: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 22,
            )),
      ),
      textTheme: Theme.of(context).textTheme.copyWith(
            subtitle: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.normal,
              fontSize: 15,
            ),
            title: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.normal,
              fontSize: 22,
            ),
            caption: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.normal,
              fontSize: 22,
            ),
          ),
    );
