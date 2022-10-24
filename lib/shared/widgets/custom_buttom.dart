import 'package:flutter/material.dart';
import 'package:masrif/constants/constants.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final void Function()? onPress;
  const CustomButton({Key? key, required this.title, this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 20),
        decoration: BoxDecoration(
            color: darkblue, borderRadius: BorderRadius.circular(10)),
        child: Center(
            child: Text(
          title,
          style: const TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.w600),
        )),
      ),
    );
  }
}
