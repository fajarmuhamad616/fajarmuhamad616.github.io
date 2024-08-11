import 'package:fajaralhijr_github_io/values/styles.dart';
import 'package:flutter/material.dart';

class InputFieldUtil extends StatelessWidget {
  final String hint;
  final int maxLines;
  final Function(String?)? onSaved;
  final TextEditingController? controller;

  const InputFieldUtil({
    super.key,
    required this.hint,
    required this.maxLines,
    this.controller,
    this.onSaved,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value!.isEmpty) {
          return "This field is required";
        }
        return null;
      },
      controller: controller,
      onSaved: onSaved,
      style: kNormalTextStyleWhite,
      autocorrect: true,
      cursorColor: Colors.green,
      maxLines: maxLines,
      decoration: InputDecoration(
        errorStyle: kNormalTextStyleWhite.copyWith(
          color: Theme.of(context).colorScheme.error,
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
        border: InputBorder.none,
        hintText: hint,
        hintStyle: kNormalTextStyleGrey,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(5),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(10),
        ),
        filled: true,
        fillColor: const Color(0xff222222).withOpacity(.5),
      ),
    );
  }
}
