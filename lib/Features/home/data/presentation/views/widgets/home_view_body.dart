import 'package:bookly/Features/home/data/presentation/views/widgets/custom_listviewitem.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'custom_appbar.dart';

class homeViewBody extends StatelessWidget {
  const homeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children:  [customAppBar(), customListviewItem()],
    );
  }
}


