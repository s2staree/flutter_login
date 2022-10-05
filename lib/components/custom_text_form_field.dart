import 'package:flutter/material.dart';
import 'package:flutter_login/size.dart';

class CustomTextFormField extends StatelessWidget {
  final String text;
  // final은 값을 초기화해야하는데, 조건이 new될 때까지.
  // const는 값을 무조건 초기화해야하는데, 조건 없이 바로.

  const CustomTextFormField({required this.text, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("${text}"),
        SizedBox(height: small_gap),
        TextFormField(
          obscureText: text == "Password" ? true : false,
          validator: (value) => value!.isEmpty
              ? "Please enter some text"
              : null, // 절대 공백X 공백이면 "뭐라도 좀 넣어" 아니면 null
          // (value) {
          //   if (text == "Password"){
          //     if(value!.length<6){
          //       return "Please password length more than 5";
          //     },
          //   },
          // },
          decoration: InputDecoration(
            hintText: "Enter ${text}",
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
      ],
    );
  }
}
