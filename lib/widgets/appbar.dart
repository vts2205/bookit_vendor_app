import 'package:bookit_vendor_app/constants/colors.dart';
import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbar({Key? key, required this.title, this.centertitle = true})
      : super(key: key);
  final String title;
  final bool centertitle;
  @override
  Size get preferredSize => const Size.fromHeight(60.0);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
      ),
      centerTitle: centertitle,
      automaticallyImplyLeading: true,
      backgroundColor: blue,
    );
  }
}
