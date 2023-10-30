import 'package:flutter/material.dart';
import 'package:netflix_1/utils/color_constants.dart';
import 'package:netflix_1/view/main_screen/search_screen/search_screen_widgets/search_suggestion_tile_builder.dart';

class SearchScreen extends StatelessWidget {
  SearchScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.bgColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 52,
              color: Color(0xFF424242),
              child: Center(
                child: SizedBox(
                  height: 31,
                  width: 328,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 20,
                        width: 20,
                        child: Center(
                          child: Icon(
                            Icons.search,
                            color: Color(0xFFC4C4C4),
                            size: 20,
                          ),
                        ),
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Search for a show, movie, genre, e.t.c.',
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 5,
                              horizontal: 4,
                            ),
                            hintStyle: TextStyle(
                              color: Color(0xFFC4C4C4),
                              fontSize: 15.21,
                              fontWeight: FontWeight.w400,
                            ),
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 24,
                        width: 24,
                        child: Center(
                          child: Icon(
                            Icons.mic,
                            color: Color(0xFFC4C4C4),
                            size: 19,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 10,
              ),
              child: Text(
                'Top Searches',
                style: TextStyle(
                  color: ColorConstant.textColor,
                  fontSize: 26.74,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Expanded(
              child: SearchSuggestionTileBuilder(),
            ),
          ],
        ),
      ),
    );
  }
}
