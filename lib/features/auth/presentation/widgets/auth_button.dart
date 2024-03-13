import 'package:blog_app/core/theme/palette.dart';
import 'package:flutter/material.dart';

class AuthButton extends StatelessWidget {
  final Function()? onPressed;
  final String buttonName;
  const AuthButton(
      {super.key, required this.onPressed, required this.buttonName});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: const LinearGradient(
          begin: Alignment.bottomRight,
          end: Alignment.topLeft,
          colors: [
            AppPallette.gradient1,
            AppPallette.gradient2,
            AppPallette.gradient3,
          ],
        ),
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            fixedSize: const Size(395, 55),
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent),
        onPressed: onPressed,
        child: Text(
          buttonName,
          style: const TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
