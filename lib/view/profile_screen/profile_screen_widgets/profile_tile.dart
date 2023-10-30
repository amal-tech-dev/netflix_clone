import 'package:flutter/material.dart';
import 'package:netflix_1/database/database.dart';
import 'package:netflix_1/utils/color_constants.dart';
import 'package:netflix_1/view/main_screen/main_screen.dart';

class ProfileTile extends StatelessWidget {
  ProfileTile({
    super.key,
    required this.index,
  });
  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () => Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (context) => MainScreen(
                username: DataBase.accounts[index]['name'],
              ),
            ),
            (route) => false,
          ),
          child: (index == DataBase.accounts.length)
              ? Container(
                  height: 100,
                  width: 100,
                  child: IconButton(
                    icon: Icon(
                      Icons.add_circle_outline_rounded,
                      color: ColorConstant.iconColor,
                      size: 50,
                    ),
                    onPressed: () {},
                  ),
                )
              : Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        DataBase.accounts[index]['image_url'],
                      ),
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 3,
          ),
          child: (index == DataBase.accounts.length)
              ? Text(
                  'Add Profile',
                  style: TextStyle(
                    color: ColorConstant.textColor,
                  ),
                )
              : Text(
                  DataBase.accounts[index]['name'],
                  style: TextStyle(
                    color: ColorConstant.textColor,
                  ),
                ),
        ),
      ],
    );
  }
}
