import 'package:flutter/material.dart';
import 'package:netflix_1/database/database.dart';

class NewArrivalsTileBuilder extends StatelessWidget {
  NewArrivalsTileBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        DataBase.newArrivalsLess.length,
        (index) => Container(
          height: 65,
          color: Color(0xFF424242),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                ),
                child: Container(
                  height: 55,
                  width: 113,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        DataBase.newArrivalsLess[index]['image_url'],
                      ),
                    ),
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'New Arrival',
                      style: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize: 13.72,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      DataBase.newArrivalsLess[index]['name'],
                      style: TextStyle(
                        color: Color(0xD4FFFFFF),
                        fontSize: 13.72,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      DataBase.newArrivalsLess[index]['date'],
                      style: TextStyle(
                        color: Color(0x7AFFFFFF),
                        fontSize: 10.51,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
