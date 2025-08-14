import 'package:flutter/material.dart';
import 'package:nectar_app/core/utils/app_colors.dart';
import 'package:nectar_app/feature/Home/models/product_item_model.dart';
import 'package:nectar_app/feature/Home/widgets/cart_item_counter.dart';

class CartListTile extends StatelessWidget {
  const CartListTile({super.key, required this.item});

  final ProductItemModel item;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 110,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(item.imageUrl, width: 70, height: 70),
              SizedBox(width: 30),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    item.name,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),

                  Text("${item.wieght}, Priceg"),
                  SizedBox(width: 30),

                  CartItemCounter(),
                ],
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              IconButton(
                icon: Icon(Icons.close, color: AppColors.primary),
                onPressed: () {
                  // Handle item removal
                },
              ),
              Text(
                '\$10.00',
                style: TextStyle(
                  fontSize: 16,
                  color: AppColors.secondary,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 1,)
            ],
          ),
        ],
      ),
    );
  }
}

