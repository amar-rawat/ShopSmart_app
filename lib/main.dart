import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smart_shop/providers/theme_porvider.dart';
import 'package:smart_shop/screens/root_screen.dart';
import 'package:smart_shop/theme/theme_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeProvider()),
      ],
      child: Consumer(builder: (context, value, child) {
        return MaterialApp(
          title: 'Smart Shop',
          theme: Styles.themeData(
              isDarkTheme: context.watch<ThemeProvider>().getIsDarkTheme,
              context: context),
          debugShowCheckedModeBanner: false,
          home: RootScreen(),
        );
      }),
    );
  }
}
