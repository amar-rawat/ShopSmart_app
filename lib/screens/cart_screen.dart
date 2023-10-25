import 'package:flutter/material.dart';
import 'package:smart_shop/services/assets_manager.dart';
import 'package:smart_shop/theme/app_colors.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Image.asset(
                AssetsManager.shopping_basket,
                width: double.infinity,
                height: size.height * 0.35,
              ),
              const Text(
                'Oops',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                    fontSize: 40),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Your cart is empty!',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
              ),
              const SizedBox(
                height: 80,
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Shop now'),
                style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.buttonColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
              )
            ],
          ),
        ),
      ),
    );
  }
}
