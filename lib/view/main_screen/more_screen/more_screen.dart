import 'package:flutter/material.dart';
import 'package:netflix_1/utils/color_constants.dart';
import 'package:netflix_1/view/main_screen/more_screen/more_screen_widgets/profile_builder.dart';

class MoreScreen extends StatelessWidget {
  MoreScreen({
    super.key,
    required this.username,
  });
  final String username;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.bgColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProfileBuilder(
              username: username,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 6.0,
                    ),
                    child: Icon(
                      Icons.edit,
                      size: 12,
                      color: ColorConstant.iconColor,
                    ),
                  ),
                  Text(
                    'Manage Profiles',
                    style: TextStyle(
                      color: ColorConstant.textColor,
                      fontSize: 14.72,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 247,
              color: Color(0xFF1A1A1A),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 143,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.mode_comment_outlined,
                                size: 25,
                                color: ColorConstant.iconColor,
                              ),
                              Padding(
                                padding: EdgeInsets.all(9),
                              ),
                              Text(
                                'Tell friends about Netflix.',
                                style: TextStyle(
                                  color: ColorConstant.textColor,
                                  fontSize: 19.63,
                                  fontWeight: FontWeight.w700,
                                ),
                              )
                            ],
                          ),
                          Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit quam dui, vivamus bibendum ut. A morbi mi tortor ut felis non accumsan accumsan quis. Massa,',
                            style: TextStyle(
                              color: ColorConstant.textColor,
                              fontSize: 10.78,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Column(
                            children: [
                              Text(
                                'Terms & Conditions',
                                style: TextStyle(
                                  color: Color(0xFFC4C4C4),
                                  fontSize: 10.78,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Container(
                                color: Color(0xFFC4C4C4),
                                height: 1,
                                width: 90,
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                color: Colors.black,
                                height: 37,
                                width: 247,
                              ),
                              ElevatedButton(
                                onPressed: () {},
                                child: Text(
                                  'Copy Link',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17.06,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                style: ButtonStyle(
                                  backgroundColor: MaterialStatePropertyAll(
                                    Color(0xFFFFFFFF),
                                  ),
                                  minimumSize: MaterialStatePropertyAll(
                                    Size(96, 45),
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 33.6,
                          width: 36,
                          decoration: BoxDecoration(
                            color: Color(0xFF2CB742),
                            borderRadius: BorderRadius.circular(8.8),
                          ),
                          child: Center(
                            child: Stack(
                              children: [
                                Image.asset(
                                  'assets/images/Vector (1).png',
                                ),
                                Positioned(
                                  top: 0,
                                  left: 0,
                                  right: 0,
                                  bottom: 0,
                                  child: Image.asset(
                                    'assets/images/Vector.png',
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 41,
                          width: 2,
                          color: Color(0xFF8C8787),
                        ),
                        Container(
                          height: 33.6,
                          width: 36,
                          decoration: BoxDecoration(
                            color: Color(0xFF395185),
                            borderRadius: BorderRadius.circular(8.8),
                          ),
                          child: Image.asset(
                            'assets/images/Vector (2).png',
                          ),
                        ),
                        Container(
                          height: 41,
                          width: 2,
                          color: Color(0xFF8C8787),
                        ),
                        Container(
                          height: 33.6,
                          width: 36,
                          decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF),
                            borderRadius: BorderRadius.circular(8.8),
                          ),
                          child: Image.asset(
                            'assets/images/Gmail-logo 1.png',
                          ),
                        ),
                        Container(
                          height: 41,
                          width: 2,
                          color: Color(0xFF8C8787),
                        ),
                        Container(
                          height: 56,
                          width: 37,
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(2),
                              ),
                              Icon(
                                Icons.more_horiz,
                                color: ColorConstant.iconColor,
                                size: 24.67,
                              ),
                              Text(
                                'More',
                                style: TextStyle(
                                  color: ColorConstant.textColor,
                                  fontSize: 14.72,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 27.0,
                vertical: 5,
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.done,
                    color: Color(0xFFE0E0E0),
                    size: 33,
                  ),
                  Padding(
                    padding: EdgeInsets.all(6),
                  ),
                  Text(
                    'My List',
                    style: TextStyle(
                      color: ColorConstant.textColor,
                      fontSize: 14.72,
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 2,
              color: Color(0xFF424242),
            ),
            Padding(
              padding: const EdgeInsets.all(26.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'App Settings',
                    style: TextStyle(
                      color: ColorConstant.textColor,
                      fontSize: 14.72,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                  ),
                  Text(
                    'Account',
                    style: TextStyle(
                      color: ColorConstant.textColor,
                      fontSize: 14.72,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                  ),
                  Text(
                    'Help',
                    style: TextStyle(
                      color: ColorConstant.textColor,
                      fontSize: 14.72,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                  ),
                  Text(
                    'Sign Out',
                    style: TextStyle(
                      color: ColorConstant.textColor,
                      fontSize: 14.72,
                      fontWeight: FontWeight.w500,
                    ),
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
