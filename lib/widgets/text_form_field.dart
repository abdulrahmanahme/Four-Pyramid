import 'package:flutter/material.dart';

Widget defaultFormField({
  required TextEditingController? controller,
  required TextInputType? type,
  ValueChanged<String>? onSubmit,
  ValueChanged<String>? onChange,
  bool isPassword = false,
  required FormFieldValidator<String>? validate,
  String? label,
  TextStyle? labelStyle,
  String? hintText,
  IconData? prefix,
  TextStyle? style,
  IconData? suffix,
  Function? suffixpress,
  Widget? suffixIcon,
  int? maxLines,
  EdgeInsetsGeometry? edgeInsetsGeometry,
}) =>
    Padding(
      padding:const EdgeInsets.all(8),
      child: TextFormField(
        controller: controller,
        keyboardType: type,
        obscureText: isPassword,
        onFieldSubmitted: onSubmit,
        onChanged: onChange,
        validator: validate,
        maxLines: maxLines,
        style: style,
        decoration: InputDecoration(
          labelText: label,
          labelStyle: labelStyle,
          hintText: hintText,
          prefixIconConstraints:const BoxConstraints(
            minWidth: 10,
            minHeight: 5,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide:const BorderSide(
              color: Colors.blue,
              width: 1.0,
            ),
          ),
          contentPadding: edgeInsetsGeometry,
          prefixIcon: Icon(
            prefix,
            color: Colors.black,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
            borderSide:const BorderSide(
              color:Color(0xffC2C2C2),
              width: 1.0,
            ),
          ),
          suffixIcon: suffixIcon,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
            borderSide: const BorderSide(
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
