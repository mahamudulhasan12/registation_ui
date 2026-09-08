import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    super.key,
    required this.controller, required this.hintText, required this.icon, required this.keybordText, this.pIcon, this.onTab,
  });
  final String hintText;
  final IconData icon;
  final TextEditingController controller;
  final TextInputType keybordText;
  final Widget ? pIcon;
  final VoidCallback?  onTab;
  @override
  Widget build(BuildContext context) {
    return TextField(
      onTap: onTab,
      controller: controller,
      keyboardType: keybordText,
      decoration: InputDecoration(
        // isDense: true,
        suffix: pIcon,
        hintText: hintText,
        prefixIcon: Icon(
          icon,
          color: Colors.grey,
        ),
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(
            color: Colors.redAccent,
            width: 1.5,
          ),
        ),
      ),
    );
  }
}