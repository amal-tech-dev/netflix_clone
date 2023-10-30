import 'package:flutter/material.dart';
import 'package:netflix_1/utils/color_constants.dart';
import 'package:netflix_1/view/main_screen/coming_soon_screen/coming_soon_screen_widgets/new_arrivals_tile_builder.dart';
import 'package:netflix_1/view/main_screen/coming_soon_screen/coming_soon_screen_widgets/notification_card_builder.dart';

class ComingSoonScreen extends StatelessWidget {
  ComingSoonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.bgColor,
        body: ListView(
          children: [
            AppBar(
              backgroundColor: ColorConstant.bgColor,
              leading: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Card(
                  shape: CircleBorder(),
                  color: Color(0xFFcF50914),
                  child: Icon(
                    Icons.notifications,
                    color: ColorConstant.iconColor,
                    size: 15,
                  ),
                ),
              ),
              title: Text(
                'Notifications',
                style: TextStyle(
                  color: ColorConstant.textColor,
                  fontSize: 16.91,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            NewArrivalsTileBuilder(),
            SizedBox(
              height: 25,
            ),
            NotificationCardBuilder(),
          ],
        ),
      ),
    );
  }
}
