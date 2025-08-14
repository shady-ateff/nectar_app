import 'dart:ui';

class ProfileTilesModel {
  final String title;
  final String? subtitle;
  final String svgIcon;
  final VoidCallback? onTap;

  ProfileTilesModel({
    required this.title,
    required this.subtitle,
    required this.svgIcon,
    required this.onTap,
  });
}

List<ProfileTilesModel> profileTiles = [
  ProfileTilesModel(
    title: 'Orders',
    subtitle: 'View your order history',
    svgIcon: 'assets/icons/Orders icon.svg',
    onTap: () {
      // Handle my orders action
    },
  ),
  ProfileTilesModel(
    title: 'My Details',
    subtitle: 'View your favorite products',
    svgIcon: 'assets/icons/My Details icon.svg',
    onTap: () {
      // Handle my wishlist action
    },
  ),
  ProfileTilesModel(
    title: 'Deleivery Addresses',
    subtitle: 'Manage your shipping addresses',
    svgIcon: 'assets/icons/Delicery address.svg',
    onTap: () {
      // Handle my addresses action
    },
  ),

  ProfileTilesModel(
    title: 'Payment Methods',
    subtitle: 'Manage your payment options',
    svgIcon: 'assets/icons/Vector icon.svg',
    onTap: () {
      // Handle payment methods action
    },
  ),

  ProfileTilesModel(
    title: 'Promocodes',
    subtitle: 'Update your personal information',
    svgIcon: 'assets/icons/Promo Cord icon.svg',
    onTap: () {
      // Handle edit profile action
    },
  ),
  ProfileTilesModel(
    title: 'Notifications',
    subtitle: 'Adjust your app preferences',
    svgIcon: 'assets/icons/Bell icon.svg',
    onTap: () {
      // Handle settings action
    },
  ),
  ProfileTilesModel(
    title: 'Help',
    subtitle: 'Read our privacy policy',
    svgIcon: 'assets/icons/about icon.svg',
    onTap: () {
      // Handle privacy policy action
    },
  ),
];
