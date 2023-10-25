import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:provider/provider.dart';
import 'package:smart_shop/providers/theme_porvider.dart';
import 'package:smart_shop/services/assets_manager.dart';
import 'package:smart_shop/widget/app_name_text.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset("assets/images/bag/shopping_cart.png"),
          ),
          title: const AppNameTextWidget(),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Visibility(
              visible: false,
              child: Padding(
                padding: EdgeInsets.all(18.0),
                child: Text(
                  'Please login to avail access',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Visibility(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(width: 3, color: Colors.blue),
                          image: const DecorationImage(
                              image: NetworkImage(
                                  "https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png"),
                              fit: BoxFit.fill)),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Amar Rawat',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text('amarrawat244@gmail.com')
                    ],
                  )
                ],
              ),
            ),
            const Divider(
              thickness: 1,
            ),
            const SizedBox(
              height: 6,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'General',
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomListTile(
                    imagePath: AssetsManager.order_svg,
                    text: 'All Orders',
                    function: () {},
                  ),
                  CustomListTile(
                    imagePath: AssetsManager.wishlist_svg,
                    text: 'Wishlist',
                    function: () {},
                  ),
                  CustomListTile(
                    imagePath: AssetsManager.recent,
                    text: 'Viewed Recently',
                    function: () {},
                  ),
                  CustomListTile(
                    imagePath: AssetsManager.address,
                    text: 'Address',
                    function: () {},
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  const Divider(
                    thickness: 1,
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  const Text(
                    'Settings',
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                  SwitchListTile(
                    secondary: Image.asset(
                      AssetsManager.theme,
                      height: 34,
                    ),
                    value: context.watch<ThemeProvider>().getIsDarkTheme,
                    title: context.watch<ThemeProvider>().getIsDarkTheme
                        ? const Text('Dark mode')
                        : const Text('Light mode'),
                    onChanged: (value) {
                      context.read<ThemeProvider>().setDarkTheme(value);
                    },
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  const Divider(
                    thickness: 1,
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Center(
                    child: ElevatedButton.icon(
                        onPressed: () {},
                        icon: const Icon(IconlyLight.login),
                        label: const Text("Login"),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.deepOrange,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)))),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}

class CustomListTile extends StatelessWidget {
  const CustomListTile(
      {super.key,
      required this.imagePath,
      required this.text,
      required this.function});
  final String imagePath, text;
  final Function function;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        function();
      },
      title: Text(text),
      leading: Image.asset(
        imagePath,
        height: 34,
      ),
      trailing: const Icon(IconlyLight.arrowRight2),
    );
  }
}
