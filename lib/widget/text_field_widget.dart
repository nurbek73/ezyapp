import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    super.key,
    required this.inputLabel,
    required this.inputHint,
    this.eye,
  });

  final String inputLabel;
  final String inputHint;
  final Icon? eye;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            inputLabel,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Color(0x80FFFFFF),
              letterSpacing: 0.08,
            ),
          ),
          const SizedBox(height: 5),
          TextField(
            decoration: InputDecoration(
              suffixIcon: eye,
              hintText: inputHint,
              hintStyle: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Color(0xFFFFFFFF),
              ),
              border: const OutlineInputBorder(),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: const BorderSide(
                  width: 1,
                  color: Color(0xB2FFFFFF),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
