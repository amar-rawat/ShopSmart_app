import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smart_shop/providers/theme_porvider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Hello World'),
            ElevatedButton(onPressed: () {}, child: const Text('Hello world')),
            SwitchListTile(
              value: context.watch<ThemeProvider>().getIsDarkTheme,
              title: context.watch<ThemeProvider>().getIsDarkTheme
                  ? Text('Dark mode')
                  : Text('Light mode'),
              onChanged: (value) {
                context.read<ThemeProvider>().setDarkTheme(value);
              },
            ),
          ],
        ),
      ),
    );
  }
}
