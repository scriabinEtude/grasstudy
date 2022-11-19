import 'package:flutter/material.dart';
import 'package:grasstudy_client/color/light_color.dart';

class LoginScreenFilledButton extends StatelessWidget {
  const LoginScreenFilledButton({
    super.key,
    this.enable = true,
    required this.onPressed,
    required this.text,
  });
  final bool enable;
  final void Function() onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: enable ? 1 : 0.3,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          backgroundColor: lightColorTheme.tertiaryColor,
        ),
        onPressed: enable ? onPressed : null,
        child: SizedBox(
          height: 50,
          width: MediaQuery.of(context).size.width,
          child: Center(
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
