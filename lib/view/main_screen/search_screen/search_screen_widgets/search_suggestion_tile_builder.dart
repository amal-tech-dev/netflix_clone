import 'package:flutter/material.dart';
import 'package:netflix_1/utils/database/database.dart';
import 'package:netflix_1/utils/color_constants.dart';

class SearchSuggestionTileBuilder extends StatelessWidget {
  SearchSuggestionTileBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.only(
          bottom: 2.5,
        ),
        child: Container(
          height: 76,
          color: Color(0xFF424242),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                DataBase.searchSuggestions[index]['image_url'],
                width: 146,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 10.0,
                    right: 3.0,
                  ),
                  child: SizedBox(
                    height: 30,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                          child: Text(
                            DataBase.searchSuggestions[index]['name'],
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14.72,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Icon(
                          Icons.play_circle_outline,
                          size: 28,
                          color: ColorConstant.iconColor,
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      itemCount: DataBase.searchSuggestions.length,
    );
  }
}
