import 'package:bookly/core/utilits/assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BestSallerItem extends StatelessWidget {
  const BestSallerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 1 / 2,
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(12)),
                color: Colors.red,
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(assetsdata.testImage),
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 30,
          ),
        Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                    width: MediaQuery.of(context).size.width * 0.60,
                    child: const Text(
                      "harry potter and the global on fire ",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          fontFamily: "Lumanosimo",
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    )),
                const SizedBox(
                  height: 3,
                ),
                const Text(
                  "khlaed",
                  style: TextStyle(fontSize: 14),
                ),
                const SizedBox(
                  height: 3,
                ),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  const  Text(
                      "125€",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                   const BookRating(),
                    SizedBox(width:  MediaQuery.of(context).size.width * 0.0,)
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return const 
    Row(
      children: [
        Icon(
          CupertinoIcons.star_fill,
          color: Colors.yellow,
        ),
        SizedBox(
          width: 3,
        ),
        Text(
          '2.8',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          width: 3,
        ),
        Text(
          '(252)',
          style: TextStyle(fontSize: 14),
        )
      ],
    );
  }
}
