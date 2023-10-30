import 'package:flutter/material.dart';
import 'package:netflix_1/utils/color_constants.dart';

class DownloadsScreen extends StatelessWidget {
  DownloadsScreen({
    super.key,
    required this.username,
  });
  final String username;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.bgColor,
        appBar: AppBar(
          backgroundColor: ColorConstant.bgColor,
          title: Padding(
            padding: const EdgeInsets.only(
              left: 15.0,
            ),
            child: Text(
              'Smart Downloads',
              style: TextStyle(
                color: ColorConstant.textColor,
                fontSize: 14.72,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 15.0,
                top: 35.0,
              ),
              child: Text(
                'Introducing Downloads For You',
                style: TextStyle(
                  color: ColorConstant.textColor,
                  fontSize: 19.63,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 12.32,
                top: 35.0,
              ),
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit quam dui, vivamus bibendum ut. A morbi mi tortor ut felis non accumsan accumsan quis. Massa, id ut ipsum aliquam  enim non posuere pulvinar diam.',
                style: TextStyle(
                  color: ColorConstant.textColor,
                  fontSize: 10.78,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: CircleAvatar(
                      radius: 88.5,
                      backgroundColor: Color(0xFF424242),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'SETUP',
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                        Color(0xFF0071EB),
                      ),
                      minimumSize: MaterialStatePropertyAll(
                        Size(
                          353,
                          50.89,
                        ),
                      ),
                      textStyle: MaterialStatePropertyAll(
                        TextStyle(
                          color: ColorConstant.textColor,
                          fontSize: 13.86,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 50,
                    ),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'Find Something to Download',
                      ),
                      style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(
                          Color(0xFF424242),
                        ),
                        minimumSize: MaterialStatePropertyAll(
                          Size(
                            239,
                            45,
                          ),
                        ),
                        textStyle: MaterialStatePropertyAll(
                          TextStyle(
                            color: ColorConstant.textColor,
                            fontSize: 16.71,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
