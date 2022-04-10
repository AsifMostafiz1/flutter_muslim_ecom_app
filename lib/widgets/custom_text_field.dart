import 'package:flutter/material.dart';
class CustomTextField extends StatelessWidget {
  CustomTextField(
      {Key? key,
        required this.labelText,
        required this.hintText,
        required this.suffixIcon,
        required this.controller,
        required this.onPressed,
        required this.textInputType,
        required this.obscureText,
        required this.changeTextVisibility,
      })
      : super(key: key);

  final String labelText;
  final String hintText;
  final IconData suffixIcon;
  final TextEditingController controller;
  final VoidCallback onPressed;
  final VoidCallback changeTextVisibility;
  final TextInputType textInputType;
  bool obscureText;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 30,
        ),
        SizedBox(
          height: 50,
          child: TextField(
            obscureText: obscureText,
            controller: controller,
            cursorColor: Colors.grey,
            textInputAction: TextInputAction.next,
            keyboardType: textInputType,
            decoration: InputDecoration(
                alignLabelWithHint: true,
                labelText: labelText,
                labelStyle: TextStyle(color: Colors.black87, fontSize: 18),
                floatingLabelBehavior: FloatingLabelBehavior.always,
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10)),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10)),
                hintText: hintText,
                suffixIcon: IconButton(
                    color: Colors.grey, icon: Icon(suffixIcon,),

                    onPressed: changeTextVisibility
                ),
                hintStyle: const TextStyle(fontSize: 14, color: Color(0xFF909090))),
          ),
        ),
      ],
    );
  }
}