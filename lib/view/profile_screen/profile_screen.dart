import 'package:flutter/material.dart';
import 'package:netflix_1/database/database.dart';
import 'package:netflix_1/utils/color_constants.dart';
import 'package:netflix_1/utils/image_constants.dart';
import 'package:netflix_1/view/profile_screen/profile_screen_widgets/profile_tile.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.bgColor,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                SizedBox(
                  height: 100,
                  width: double.infinity,
                ),
                Center(
                  child: Container(
                    height: 100,
                    width: 300,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          ImageConstant.appLogo,
                        ),
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  right: 30,
                  top: 0,
                  bottom: 0,
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      size: 25,
                      Icons.edit,
                      color: ColorConstant.iconColor,
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(70.0),
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 20,
                  ),
                  itemBuilder: (context, index) => ProfileTile(
                    index: index,
                  ),
                  itemCount: DataBase.accounts.length + 1,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
