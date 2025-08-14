import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nectar_app/core/utils/app_colors.dart';
import 'package:nectar_app/feature/Home/pages/account_page.dart';
import 'package:nectar_app/feature/Home/pages/cart_page.dart';
import 'package:nectar_app/feature/Home/pages/explore_page.dart';
import 'package:nectar_app/feature/Home/pages/favorite_page.dart';
import 'package:nectar_app/feature/Home/pages/shop_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;
  // This variable can be used to manage the state of the page if needed
  final _pages = [
    // Add your page widgets here
    // For example: HomePage(), ExplorePage(), CartPage(), FavoritesPage(), AccountPage()
    ShopPage(),
    ExplorePage(),
    CartPage(),
    FavoritePage(),
    AccountPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },

        selectedItemColor: AppColors.primary,
        unselectedItemColor: AppColors.secondary,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/store 1.svg',
              colorFilter: ColorFilter.mode(
                _currentIndex == 0 ? AppColors.primary : AppColors.secondary,
                BlendMode.srcIn,
              ),
            ),
            label: 'Shop',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/explore.svg',
              colorFilter: ColorFilter.mode(
                _currentIndex == 1 ? AppColors.primary : AppColors.secondary,
                BlendMode.srcIn,
              ),
            ),

            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/cart.svg',
              colorFilter: ColorFilter.mode(
                _currentIndex == 2 ? AppColors.primary : AppColors.secondary,
                BlendMode.srcIn,
              ),
            ),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/love.svg',
              colorFilter: ColorFilter.mode(
                _currentIndex == 3 ? AppColors.primary : AppColors.secondary,
                BlendMode.srcIn,
              ),
            ),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/user.svg',
              colorFilter: ColorFilter.mode(
                _currentIndex == 4 ? AppColors.primary : AppColors.secondary,
                BlendMode.srcIn,
              ),
            ),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}
