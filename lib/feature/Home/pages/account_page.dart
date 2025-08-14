import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nectar_app/components/custom_button.dart';
import 'package:nectar_app/core/utils/app_colors.dart';
import 'package:nectar_app/feature/Home/models/profile_tiles_model.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(25),
              width: double.infinity,
              // height: 200,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage(
                      'assets/images/profilePicture.jpg',
                    ),
                    // assets\images\profile_picture.jpg
                  ),
                  SizedBox(width: 20),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Shady Atef',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(width: 10),
                          Icon(Icons.edit_outlined, color: AppColors.primary),
                        ],
                      ),
                      Text('shadyatefbakry@gmail.com'),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: ListView.separated(
                separatorBuilder: (context, index) => Divider(
                  endIndent: 20,
                  color: AppColors.secondary.withAlpha(50),
                ),
                shrinkWrap: true,
                itemCount: profileTiles.length,
                itemBuilder: (context, index) {
                  final tile = profileTiles[index];
                  return ListTile(
                    leading: SvgPicture.asset(
                      tile.svgIcon,
                      width: 20,
                      // height: 20,
                    ),
                    title: Text(tile.title, style: TextStyle(fontSize: 18)),
                    trailing: Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      // Navigate to settings page
                    },
                  );
                },
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: ElevatedButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  elevation: 0,
                  backgroundColor: AppColors.secondary.withAlpha(15),
                  foregroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: SizedBox(
                  width: double.infinity,
                  child: Stack(
                    alignment: Alignment.centerLeft,
                    children: [
                      Icon(Icons.logout, color: AppColors.primary),
                      Positioned(
                        left: 130,
                        child: Text(
                          'Log Out',
                          style: TextStyle(fontSize: 18, color: AppColors.primary),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
