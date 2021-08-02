import 'package:flutter/material.dart';

class CommonContainer extends StatelessWidget {
  final Color reqcolor;
  final Widget containerChild;
  final Function onpress;

  CommonContainer({@required this.reqcolor, this.containerChild, this.onpress});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Container(
        height: 200,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: reqcolor,
          borderRadius: BorderRadius.circular(30),
        ),
        child: containerChild,
      ),
    );
  }
}
