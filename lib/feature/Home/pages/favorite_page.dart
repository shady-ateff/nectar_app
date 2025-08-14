import 'package:flutter/material.dart';
import 'package:nectar_app/core/utils/app_colors.dart';
import 'package:nectar_app/feature/Home/models/product_item_model.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: const Text(
          'Favorites',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        backgroundColor: AppColors.background,
        centerTitle: true,
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) => Divider(
          indent: 20,
          endIndent: 20,
          thickness: 1,
          height: 1,
          color: AppColors.secondary.withAlpha(40),
        ),
        itemCount: 7,
        itemBuilder: (context, index) {
          final p = allHealthyProducts[index % allHealthyProducts.length];
          return Padding(
            padding: const EdgeInsets.all(32.0),
            child: Row(
              children: [
                Image.network(p.imageUrl, width: 50, height: 60),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        p.name,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        "${p.wieght}, Price",
                        style: TextStyle(color: Colors.grey[600], fontSize: 14),
                      ),
                    ],
                  ),
                ),
                Text(
                  '\$${p.price.toStringAsFixed(2)}',
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(width: 10),
                IconButton(
                  icon: const Icon(Icons.arrow_forward_ios),
                  onPressed: () {
                    // Handle delete action
                  },
                ),],
            ),
          );
          // ListTile(
          //   leading: Image.network(p.imageUrl, width: 50, height: 50, fit: BoxFit.cover),
          //   title: Text(p.name, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          //   trailing: Row(
          //     children: [
          //       Text('\$${p.price}'),
          //       // Icon(Icons.arrow_forward_ios, size: 6, color: Colors.grey),
          //     ],
          //   ),
          //   // isThreeLine: true,
          // );
        },
      ),
    );
  }
}
