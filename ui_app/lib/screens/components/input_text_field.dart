import 'package:flutter/material.dart';

class InputTextField extends StatelessWidget {
   InputTextField({
    Key? key,
    required this.myController,
    required this.focusNode,
    required this.onFiledSubmittedValue,
    required this.keyBoardType,
    required this.obscureText,
    required this.hint,
  this.enable = true,
    required this.onValidator,
    this.autoFocus = true,
    this.icon,
     this.suffixIcon,

    }): super(key: key);
  final TextEditingController myController;
  final IconData?  icon;
  final FocusNode focusNode;
  final FormFieldSetter onFiledSubmittedValue;
  final FormFieldValidator onValidator;
  final TextInputType keyBoardType;
  final String hint;
  final bool obscureText;
  final bool enable,autoFocus;
  final Widget? suffixIcon;

  

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: myController,
      focusNode: focusNode,
      obscureText: obscureText,
      onFieldSubmitted: onFiledSubmittedValue,
      validator: onValidator,
      keyboardType: keyBoardType,

      decoration: InputDecoration(
        hintText: hint,
        prefixIcon: Icon(icon),
        suffixIcon: suffixIcon,


        //prefixIcon: Icon(Icons.visibility),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black,width: 2),
              borderRadius: BorderRadius.circular(20),
        )
      ),
    );
  }
}
