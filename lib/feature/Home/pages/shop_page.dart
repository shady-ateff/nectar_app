import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nectar_app/core/utils/app_colors.dart';
import 'package:nectar_app/feature/Home/models/product_item_model.dart';
import 'package:nectar_app/feature/Home/widgets/exclusive_section_header_widget.dart';
import 'package:nectar_app/feature/Home/widgets/product_card.dart';
import 'package:nectar_app/feature/Home/widgets/search_bar_widget.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SvgPicture.asset(
          'assets/images/splash.svg',
          height: 56,
          colorFilter: ColorFilter.mode(AppColors.primary, BlendMode.srcIn),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SearchBarWidget(),
        
            // SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.only(left: 23.0, top: 22),
              child: Column(
                spacing: 16,
                children: [
                  SectionHeaderWidget(title: "Exclusive Offers"),
                  SizedBox(
                    height: 248,
                    width: double.infinity,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: exclusiveProductItems.length,
                      itemBuilder: (context, index) {
                        final product = exclusiveProductItems[index];
                        return ProductCard(
                          title: product.name,
                          description: "${product.wieght}, Priceg",
                          imageUrl: product.imageUrl,
                          price: product.price,
                        );
                      },
                    ),
                  ),
                  SectionHeaderWidget(title: "Best Selling"),
                  Column(
                    children: [
                      GridView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisExtent: 250,
                          // crossAxisSpacing: 16,
                          mainAxisSpacing: 10
                        ),
                        itemCount: allHealthyProducts.length,
                        itemBuilder: (context,index){
                          final product = allHealthyProducts[index];
                          return ProductCard(
                            title: product.name,
                            description: "${product.wieght}, Priceg",
                            imageUrl: product.imageUrl,
                            price: product.price,
                            isNetworkImage: true,
                          );
                      
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
