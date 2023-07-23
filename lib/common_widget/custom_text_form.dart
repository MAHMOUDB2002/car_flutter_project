import 'package:flutter/material.dart';

class CustomTextForm extends StatelessWidget {
  TextEditingController? controller;
  String? hintText;
  String? labelText;
  IconData? preIcon;
  IconData? suffixIcon;
  TextInputType? textInputType;
  FormFieldValidator<String>? validator;
  Function? suffixPressed;
  bool isPassword = false;

  CustomTextForm(
    this.controller,
    this.hintText,
    this.labelText,
    this.textInputType, {
    this.preIcon,
    this.suffixIcon,
    this.validator,
    this.suffixPressed,
    required this.isPassword,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: const Color(0xFFfafafa),
          borderRadius: BorderRadius.circular(10)),
      child: TextFormField(
        
        controller: controller,
        keyboardType: textInputType,
        obscureText: isPassword,
        validator: validator,
        textAlign: TextAlign.start,
        
        decoration: InputDecoration(
          // focusedBorder: ,
          // focusColor: ,
            contentPadding: const EdgeInsets.only(left: 15),
            hintText: hintText,
            labelText: labelText,
            hintStyle: const TextStyle(color: Color(0xFFeb6b7bb)),
            prefixIcon: this.preIcon != null
                ? Icon(
                    preIcon,
                    color: const Color(0xFFeb6b7bb),
                  )
                : null,
            suffixIcon: suffixIcon != null
                ? IconButton(onPressed: () {}, icon: Icon(suffixIcon))
                : null),
      ),
    );
  }
}
