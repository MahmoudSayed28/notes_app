import 'package:flutter/material.dart';
import 'package:newnotes/main.dart';

class CustomTextfieled extends StatelessWidget {
  const CustomTextfieled({super.key, required this.hint,   this.maxlines=1, this.onSaved});
final String hint;
final int? maxlines;
final void Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved:onSaved ,
      validator: (value){
         if (value?.isEmpty??true) {
           return 'Field Required';
         }else
         return null;
      },
      maxLines: maxlines,
      decoration: InputDecoration(
        
        hintText: hint,
        hintStyle: const TextStyle(
          color: Colors.white,
          fontSize: 23,
        ),
        enabledBorder: outlineBorder(),
        errorBorder: outlineBorder(),
        focusedBorder: outlineBorder(),
        border: outlineBorder(),
        ),
     
    );
  }

  OutlineInputBorder outlineBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
        borderSide: const BorderSide(color:kPrimaryColor),
      );
  }
}
