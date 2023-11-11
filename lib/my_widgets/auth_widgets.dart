import 'package:flutter/material.dart';

import '../main_screens/welcome_page.dart';

class AuthHeaderLabel extends StatelessWidget {
  const AuthHeaderLabel({super.key, required this.labelText});
  final String labelText;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          labelText,
          style: const TextStyle(fontFamily: 'Playpen', fontSize: 22),
        ),
        const SizedBox(width: 20),
        MaterialButton(
          padding: const EdgeInsets.all(0),
          onPressed: () {
            Navigator.pushReplacementNamed(context, WelcomePage.pageName);
          },
          child: SizedBox(
            height: 80,
            width: 90,
            child: FittedBox(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/logos/wooden_house.png',
                    height: 60,
                    width: 60,
                  ),
                  Text(
                    'L e a v e?',
                    style: TextStyle(
                        fontSize: 9,
                        color: Colors.pinkAccent.shade200,
                        fontFamily: 'Playpen',
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}

class HaveAccountOrNot extends StatelessWidget {
  const HaveAccountOrNot(
      {super.key,
      required this.account,
      required this.buttonLabel,
      required this.onPressed});
  final String account;
  final String buttonLabel;
  final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(account),
        TextButton(
          onPressed: onPressed,
          child: Text(
            buttonLabel,
            style: TextStyle(
                color: Colors.pink.shade300,
                fontSize: 16,
                fontWeight: FontWeight.bold,
                fontFamily: 'Playpen'),
          ),
        )
      ],
    );
  }
}

InputDecoration buildInputDecoration() {
  return InputDecoration(
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: Colors.grey.shade300),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: Colors.lightBlueAccent),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: Colors.red),
    ),

    // fillColor: Colors.grey.shade300,
    //filled: true,
  );
}
