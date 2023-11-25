import 'package:flutter/material.dart';
import 'package:verstka/widget/regist_button.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xff8C4AE2),
            Color(0xff743BD1),
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: (Colors.transparent),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset('assets/images/two.png',
                  height: screenSize.height * 0.15),
              SizedBox(height: screenSize.height * 0.06),
              const Flexible(
                child: Text(
                  'Добро пожаловать!',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFFFFFFFF),
                    letterSpacing: 0.15,
                  ),
                ),
              ),
              SizedBox(height: screenSize.height * 0.02),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: screenSize.width * 0.04),
                child: const Text(
                  'Приветствуем вас на площадке аренды строительной техники',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFFFFFFFF),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: screenSize.height * 0.1),
              const OutlinedRegistrationButtonWidget(),
              SizedBox(height: screenSize.height * 0.2),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'У меня уже есть аккаунт',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFFFFFFFF),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
