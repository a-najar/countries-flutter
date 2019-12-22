import 'package:countries/main.routes.dart';
import 'package:countries/main.theme.dart';
import 'package:countries/providers/countries.provider.dart';
import 'package:countries/ui/screens/countries.screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(CountriesApp());

class CountriesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CountriesProvider()),
      ],
      child: MaterialApp(
        title: 'Countries',
        theme: appTheme(context),
        initialRoute: CountriesScreen.routeName,
        routes: appRoutes,
      ),
    );
  }
}
