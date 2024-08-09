import 'package:flutter/material.dart';
import 'package:newnotes/main.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key, this.onTap, this.isloading = false});
  final void Function()? onTap;
  final bool isloading;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: kPrimaryColor,
        ),
        child: Center(
          child: isloading
              ? const CircularProgressIndicator(
                  color: Colors.black,
                )
              : const Text(
                  'Add',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 23,
                      fontWeight: FontWeight.w700),
                ),
        ),
      ),
    );
  }
}
