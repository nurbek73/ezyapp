import 'package:flutter/material.dart';
import 'package:verstka/screen/regist_page.dart';

class OutlinedRegistrationButtonWidget extends StatelessWidget {
  const OutlinedRegistrationButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          fixedSize: const Size(double.maxFinite, 60),
          shape: const StadiumBorder(),
          side: const BorderSide(
            width: 2,
            color: Color(0xB2FFFFFF),
          ),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const RegistPage(),
            ),
          );
        },
        child: const Text(
          'Регистрация',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: Color(0xFFFFFFFF),
          ),
        ),
      ),
    );
  }
}
