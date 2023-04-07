import 'package:flutter/material.dart';

class ForgotPassOrSignUpButton extends StatelessWidget {
  const ForgotPassOrSignUpButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Row(
        children: const [
          Expanded(
            child: Divider(
              color: Colors.grey,
              thickness: 0.5,
            ),
          ),
          Text('Şifremi Unuttum / Kayıt Ol',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              )),
          Expanded(
            child: Divider(
              color: Colors.grey,
              thickness: 0.5,
            ),
          )
        ],
      ),
    );
  }
}
