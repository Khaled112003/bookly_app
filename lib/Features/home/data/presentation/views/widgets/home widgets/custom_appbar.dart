import 'package:bookly/core/utilits/assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class customAppBar extends StatelessWidget {
  const customAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            assetsdata.logo,
            height: 22,
          ),
          IconButton(
              onPressed: () {
                GoRouter.of(context).go('/SearchBage');
              },
              icon: Icon(
                CupertinoIcons.search,
                size: 25,
              ))
        ],
      ),
    );
  }
}
