import 'package:bns_vs_ipc/Ui_helper.dart';
import 'package:flutter/material.dart';

class Searching_Widget extends StatelessWidget {
  final TextEditingController searchController;
  final String hintText;
  final void Function(String)? onChanged;
  final void Function()? clearOnPressed;

  Searching_Widget({
    required this.searchController,
    required this.hintText,
    required this.onChanged,
    required this.clearOnPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: searchController,
      style: mTextStyle14(),
      onChanged: onChanged,
      decoration: mInputDecoration(
        radius: 7,
        hintStyle: mTextStyle14(mColor: Colors.black54),
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 1),
        hint: hintText,
        suffixIcon: searchController.text.isEmpty
            ? Icon(Icons.search_rounded, color: AppColor.darkBlue)
            : IconButton(
                icon: Icon(Icons.close),
                onPressed: clearOnPressed,
              ),
      ),
    );
  }
}
