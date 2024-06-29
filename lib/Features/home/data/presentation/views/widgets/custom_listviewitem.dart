import 'package:bookly/core/utilits/assets.dart';
import 'package:flutter/cupertino.dart';

class customListviewItem extends StatelessWidget {
  const customListviewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: MediaQuery.of(context).size.width*0.30,
      child: AspectRatio(
        aspectRatio: 2/4,
        child: Container(
          
          
          decoration:const BoxDecoration(
            
            
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(assetsdata.testImage),
            ),
          ),
        ),
      ),
    );
  }
}