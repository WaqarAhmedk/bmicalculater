import 'package:flutter/material.dart';
import 'constants.dart';

class CommonButton extends StatelessWidget {
  final String buttontitle;
  final Function onTap;
  CommonButton({@required this.buttontitle, @required this.onTap});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: kbtmclr,
        height: 50,
        width: double.infinity,
        margin: EdgeInsets.only(top: 15),
        child: Center(
          child: Text(
            buttontitle,
            style: TextStyle(
                fontSize: 30,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
