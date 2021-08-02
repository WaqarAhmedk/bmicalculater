import 'package:flutter/material.dart';

class IconButtonmodified extends StatelessWidget {
  IconButtonmodified({this.btnicon, this.onclick});
  final IconData btnicon;
  final Function onclick;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(
        btnicon,
        color: Colors.white,
      ),
      onPressed: onclick,
      fillColor: Colors.white30,
      elevation: 6,
      shape: CircleBorder(),
      constraints: BoxConstraints.tightFor(
        height: 56,
        width: 56,
      ),
    );
  }
}
