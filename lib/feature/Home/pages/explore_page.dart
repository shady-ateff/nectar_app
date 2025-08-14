import 'package:flutter/material.dart';
import 'package:nectar_app/feature/Home/models/categories_item_model.dart';
import 'package:nectar_app/feature/Home/widgets/search_bar_widget.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Find Products'), centerTitle: true),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SearchBarWidget(),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 25.0,
                vertical: 20,
              ),
              child: GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.89,
                ),
                itemCount: categoriesItems.length,
                itemBuilder: (context, index) {
                  final category = categoriesItems[index];
                  return Container(
                    margin: const EdgeInsets.all(5),
                    height: 190,
                    decoration: BoxDecoration(
                      color: category.bgColor,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: darkenColor(category.bgColor, 0.2),
                      ),
                    ),
                    // color: category.bgColor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(category.imageUrl ,width: 115),
                        SizedBox(height: 8),
                        Text(
                          category.name,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            // Add your explore page content here
            // For example, you can use categoriesItems from CategoriesItemModel
          ],
        ),
      ),
    );
  }
}


Color darkenColor(Color color, [double amount = 0.1]) {
  assert(amount >= 0 && amount <= 1, 'Amount must be between 0 and 1');

  final hsl = HSLColor.fromColor(color);
  final lightness = (hsl.lightness - amount).clamp(0.0, 1.0);
  return hsl.withLightness(lightness).toColor();
}
