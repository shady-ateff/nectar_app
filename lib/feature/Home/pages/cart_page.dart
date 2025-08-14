import 'package:flutter/material.dart';
import 'package:nectar_app/components/custom_button.dart';
import 'package:nectar_app/core/utils/app_colors.dart';
import 'package:nectar_app/feature/Home/models/product_item_model.dart';
import 'package:nectar_app/feature/Home/widgets/cart_item_counter.dart';
import 'package:nectar_app/feature/Home/widgets/cart_list_tile.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'My Cart',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(1.0),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            ListView.separated(
              separatorBuilder: (context, index) => Divider(
                indent: 25,
                endIndent: 25,
                color: AppColors.primary.withAlpha(90),
              ),
              itemCount: exclusiveProductItems.length - 1,
              itemBuilder: (context, index) {
                final item = exclusiveProductItems[index];
                return CartListTile(item: item);
              },
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: CustomButton(text: "Go To Checkout", onPressed: () {}),
            ),
          ],
        ),
      ),
    );
  }
}
