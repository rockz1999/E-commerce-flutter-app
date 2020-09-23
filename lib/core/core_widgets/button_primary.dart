import 'package:al_ma/utils/style.dart';
import 'package:flutter/material.dart';

///Primary button with primary bg color for high emphasis buttons
class PrimaryButton extends StatelessWidget {
  //function to be executed when onpressed
  final Function onPressed;
  //text to be displayed on buttons
  final String buttonText;
  //color for the text on button, can be left null it will take white as default
  final Color textColor;

  ///constructors for using primary button by passing variables
  const PrimaryButton(
      {Key key, this.onPressed, @required this.buttonText, this.textColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: onPressed == null ? () {} : onPressed,
      color: FontColors.primaryColor,
      elevation: 6,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(buttonText),
      colorBrightness: Brightness.light,
      textColor: textColor == null ? Colors.white : textColor,
      padding: const EdgeInsets.all(10),
      visualDensity: VisualDensity.comfortable,
      disabledColor: FontColors.greyVeryLight,
      disabledTextColor: Colors.black,
      disabledElevation: 0,
    );
  }
}
