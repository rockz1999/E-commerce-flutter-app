import 'package:al_ma/utils/style.dart';
import 'package:flutter/material.dart';

class PrimaryTextfield extends StatelessWidget {
  // ------------------------------ Variables --------------------------------//

  ///TextEditingController to control the text in the field
  final TextEditingController controller;

  ///keyboard type for the textfield
  final TextInputType keyboard;

  /// if true the text will be password type won't be displayed, if left null, text will be normal
  final bool isPassword;

  /// if false then the textfield will be disabled, if left null, it will be enabled
  final bool isEnabled;

  /// hint is the text as a placeholder eg: "enter your name", and label is the floating text eg: "Email"
  final String hint, label;

  final Icon prefixIcon;

  ///Constructor to pass the variables into the Textfield
  const PrimaryTextfield(
      {Key key,
      @required this.controller,
      this.keyboard,
      this.isPassword,
      this.isEnabled,
      @required this.hint,
      @required this.label,
      @required this.prefixIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    //building textfield
    return TextField(
      controller: controller,
      keyboardType: keyboard == null ? TextInputType.text : keyboard,
      obscureText: isPassword == null ? false : isPassword,
      decoration: InputDecoration(
        filled: true,
        fillColor: FontColors.cardColor,
        enabled: isEnabled == null ? true : isEnabled,
        //enabled border style
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: FontColors.greyDark,
          ),
        ),
        //error border style
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: FontColors.errorColor,
          ),
        ),
        //disabled border style
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: FontColors.greyLight,
          ),
        ),
        //focused border style
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: FontColors.primaryColor,
          ),
        ),
        //error border when focused
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: FontColors.errorColor,
          ),
        ),
        hintText: hint,
        //TODO: give hintStyle
        labelText: label,
        //TODO: give labelStyle
        prefixIcon: prefixIcon,
        //TODO: attach focus node
      ),
    );
  }
}
