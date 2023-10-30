import 'package:flutter/material.dart';
import 'package:netflix_1/utils/color_constants.dart';

class MoviesListBuilder extends StatelessWidget {
  MoviesListBuilder({
    super.key,
    required this.title,
    required this.moviesList,
    this.height = 160,
    this.width = 100,
    this.fontSize = 20,
    this.shape = BoxShape.rectangle,
    this.childVisiblity = false,
  });

  final String title;
  final List moviesList;
  final double height, width, fontSize;
  final BoxShape shape;
  final bool childVisiblity;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              color: ColorConstant.textColor,
              fontSize: fontSize,
            ),
          ),
          Container(
            height: height,
            color: Colors.transparent,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 2.0,
                  vertical: 5.0,
                ),
                child: Container(
                  height: height,
                  width: width,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        moviesList[index],
                      ),
                      fit: BoxFit.fill,
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Visibility(
                    visible: childVisiblity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          height: 45,
                          width: 100,
                          constraints: BoxConstraints(
                            maxHeight: 45,
                          ),
                          decoration: BoxDecoration(
                            color: Color(0xFF121212),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              SizedBox(
                                height: 45,
                                width: 45,
                                child: Icon(
                                  Icons.info_outline_rounded,
                                  color: ColorConstant.iconColor,
                                ),
                              ),
                              SizedBox(
                                height: 45,
                                width: 45,
                                child: Icon(
                                  Icons.more_vert,
                                  color: ColorConstant.iconColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              itemCount: moviesList.length,
            ),
          ),
        ],
      ),
    );
  }
}
