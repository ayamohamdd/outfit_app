import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:store_app/shared/constants/colors.dart';

Widget defaultFormField({
  required TextEditingController controller,
  required TextInputType type,
  void Function(String x)? onSubmit,
  void Function(String x)? onChange,
  void Function()? onTap,
  bool isPassword = false,
  final String? Function(String?)? validate,
  String? errorText,
  required String label,
  String? initVal,
  IconData? prefix,
  IconData? suffix,
  void Function()? suffixPressed,
  bool isClickable = true,
}) =>
    Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
          color: AppColors.formColor,
          boxShadow: const [
            BoxShadow(color: AppColors.elevColor, blurRadius: 3),
          ],
          borderRadius: BorderRadius.circular(50)),
      child: TextFormField(
        controller: controller,
        keyboardType: type,
        obscureText: isPassword,
        onFieldSubmitted: onSubmit,
        onChanged: onChange,
        onTap: onTap,
        initialValue: initVal,
        enabled: isClickable,
        validator: validate,
        decoration: InputDecoration(
          filled: true,
          fillColor: AppColors.formColor,
          hintText: label,
          prefixIcon: Icon(
            prefix,
          ),
          suffixIcon: suffix != null
              ? IconButton(
                  onPressed: suffixPressed,
                  icon: Icon(
                    suffix,
                    color: AppColors.elevColor,
                  ),
                )
              : null,
          contentPadding: EdgeInsets.all(0),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              width: 0.01,
              color: AppColors.formColor,
            ),
            borderRadius: BorderRadius.circular(50.0),
          ),
          
          border: InputBorder.none,
        ),
      ),
    );

Widget defaultPhoneFormField({
  required String label,
  required Function onChangeMethod,
  final double bottomPadding = 0,
  final double leftPadding = 0,
  final double rightPadding = 0,
  final double topPadding = 0,
  PhoneInputSelectorType selectorType = PhoneInputSelectorType.BOTTOM_SHEET,
  Color? cursorColor,
  bool format = false,
}) =>
    InternationalPhoneNumberInput(
      cursorColor: cursorColor,
      formatInput: format,
      selectorConfig: SelectorConfig(selectorType: selectorType),
      inputDecoration: InputDecoration(
        contentPadding:
            EdgeInsets.only(top: topPadding,bottom: bottomPadding, left: leftPadding,right:rightPadding,),
        border: InputBorder.none,
        hintText: label,
      ),
      onInputChanged: (PhoneNumber value) => onChangeMethod,
    );
