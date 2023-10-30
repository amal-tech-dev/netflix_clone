import 'package:flutter/material.dart';
import 'package:netflix_1/database/database.dart';
import 'package:netflix_1/utils/color_constants.dart';
import 'package:netflix_1/view/main_screen/main_screen.dart';

class ProfileBuilder extends StatelessWidget {
  ProfileBuilder({
    super.key,
    required this.username,
  });
  final String username;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(
          left: 4.5,
          right: 4.5,
          top: 33.5,
        ),
        itemBuilder: (context, index) => (index == DataBase.accounts.length)
            ? Padding(
                padding: const EdgeInsets.only(
                  top: 8.5,
                  bottom: 27.5,
                ),
                child: Container(
                  width: 63,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xFF8C8787),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(3),
                  ),
                  child: Center(
                    child: Stack(
                      children: [
                        SizedBox(
                          height: 35,
                          width: 35,
                        ),
                        Center(
                          child: Container(
                            height: 2.6,
                            width: 23.52,
                            color: Color(0xFFC4C4C4),
                          ),
                        ),
                        Center(
                          child: Container(
                            height: 24.61,
                            width: 2.6,
                            color: Color(0xFFC4C4C4),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 4.5,
                    ),
                    child: InkWell(
                      onTap: () => Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MainScreen(
                              username: DataBase.accounts[index]['name'],
                            ),
                          ),
                          (route) => false),
                      child: Container(
                        height: (DataBase.accounts[index]['name'] == username)
                            ? 68.72
                            : 60.07,
                        width: (DataBase.accounts[index]['name'] == username)
                            ? 73
                            : 65.29,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              DataBase.accounts[index]['image_url'],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(2),
                  ),
                  Text(
                    DataBase.accounts[index]['name'],
                    style: TextStyle(
                      color: ColorConstant.textColor,
                      fontSize: 12.35,
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
        itemCount: DataBase.accounts.length + 1,
      ),
    );
  }
}
