import 'package:flutter/material.dart';
import 'package:verstka/widget/elevated_button.dart';
import 'package:verstka/widget/text_field_widget.dart';

class RegistPage extends StatelessWidget {
  const RegistPage({super.key});

  @override
  Widget build(BuildContext context) {
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
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Регистрация',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Color(0xFFFFFFFF),
              letterSpacing: 0.1,
            ),
          ),
          backgroundColor: (Colors.transparent),
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back),
          ),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(14),
            child: ListView(
              shrinkWrap: true,
              reverse: true,
              children: [
                const TextFieldWidget(
                  inputLabel: 'Фамилия',
                  inputHint: 'Иванов',
                ),
                const TextFieldWidget(
                  inputLabel: 'Имя',
                  inputHint: 'Иван',
                ),
                const TextFieldWidget(
                  inputLabel: 'Номер телефона',
                  inputHint: '(+996) 500 000 000',
                ),
                const TextFieldWidget(
                  inputLabel: 'Пароль',
                  inputHint: '•••••••',
                  eye: Icon(
                    Icons.remove_red_eye_outlined,
                    color: Color(0xffFFFFFF),
                  ),
                ),
                const SizedBox(height: 26),
                const ElevatedButtonWidget(),
              ].reversed.toList(),
            ),
          ),
        ),
      ),
    );
  }
}
