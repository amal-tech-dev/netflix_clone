import 'package:flutter/material.dart';
import 'package:netflix_1/utils/database.dart';
import 'package:netflix_1/utils/color_constants.dart';

class NotificationCardBuilder extends StatelessWidget {
  NotificationCardBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> genreWidgets(List<String> genresList) {
      List<Widget> genres = [];

      for (int i = 0; i < genresList.length; i++) {
        genres.add(
          Text(
            genresList[i],
            style: TextStyle(
              color: Color(0xFFFFFFFF),
              fontSize: 11.4,
              fontWeight: FontWeight.w600,
            ),
          ),
        );

        if (i < genresList.length - 1) {
          genres.add(
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 5.76,
              ),
              child: Text(
                '.',
                style: TextStyle(
                  color: Color(0xB0FFFFFF),
                  fontSize: 15.78,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
          );
        }
      }
      return genres;
    }

    return Column(
      children: List.generate(
        DataBase.newArrivalsMore.length,
        (index) => SizedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 195,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      DataBase.newArrivalsMore[index]['image_url'],
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 20.0,
                      right: 40,
                    ),
                    child: SizedBox(
                      height: 40,
                      child: Column(
                        children: [
                          Icon(
                            Icons.notifications,
                            color: ColorConstant.iconColor,
                            size: 24,
                          ),
                          Text(
                            'Remind Me',
                            style: TextStyle(
                              color: ColorConstant.textColor,
                              fontSize: 11.13,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 20.0,
                      right: 20,
                    ),
                    child: SizedBox(
                      height: 40,
                      child: Column(
                        children: [
                          Icon(
                            Icons.share,
                            color: ColorConstant.iconColor,
                            size: 24,
                          ),
                          Text(
                            'Share',
                            style: TextStyle(
                              color: ColorConstant.textColor,
                              fontSize: 11.13,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 12.0,
                  bottom: 17,
                  right: 12.0,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      DataBase.newArrivalsMore[index]['season_and_date'],
                      style: TextStyle(
                        color: Color(0xD4FFFFFF),
                        fontSize: 11.4,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      DataBase.newArrivalsMore[index]['name'],
                      style: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize: 18.66,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      DataBase.newArrivalsMore[index]['description'],
                      style: TextStyle(
                        color: Color(0xD4FFFFFF),
                        fontSize: 11.4,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Row(
                      children: genreWidgets(
                        DataBase.newArrivalsMore[index]['genre'],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
