import 'package:flutter/material.dart';
import 'package:nectar_app/core/utils/app_colors.dart';

class ProductCard extends StatelessWidget {
  final String title;
  final String description;
  final String imageUrl;
  final double price;
  final bool isNetworkImage;
  const ProductCard({
    super.key,
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.price,
    this.isNetworkImage = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 15.0),
      width: 173,
      decoration: BoxDecoration(
        // color: AppColors.secondaryLight,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(
          color: AppColors.secondary.withAlpha(50),
          width: 1.5,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            isNetworkImage
                ? Image.network(imageUrl, height: 100, width: 100)
                : Image.asset(imageUrl, height: 100, width: 100),
            SizedBox(height: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: AppColors.secondary,
                  ),
                ),
                Text(
                  description,
                  style: TextStyle(color: Colors.grey[600], fontSize: 15),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  ' \$${price.toStringAsFixed(2)}',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: AppColors.secondary,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: BorderRadius.circular(17),
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.add),
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
