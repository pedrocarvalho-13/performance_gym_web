import 'package:flutter/material.dart';

class Header extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      flexibleSpace: Center(
        child: Image.asset(
          'assets/images/performance_logo.png',
          fit: BoxFit.contain,
          width: 200,
        ),
      ),
    );
  }
}
