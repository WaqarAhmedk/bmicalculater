import 'package:flutter/material.dart';

import './constants.dart';

class GenderWidget extends StatelessWidget {
  final IconData gicon;
  final String gtext;
  GenderWidget({this.gicon, this.gtext});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          gicon,
          size: 40,
          color: Colors.white,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          gtext,
          style: klabeltxtstyle,
        )
      ],
    );
  }
}
