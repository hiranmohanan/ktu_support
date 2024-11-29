part of '../constants.dart';

InputDecoration textFieldDecoration(
    {required BuildContext context, String? hintText}) {
  return InputDecoration(
    constraints: BoxConstraints(maxWidth: 60.w, maxHeight: 5.h, minHeight: 3.h),
    hintText: hintText,
    alignLabelWithHint: true,
    filled: true,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.0),
      borderSide: BorderSide(
        color: Theme.of(context).primaryColor,
        width: 1.0,
      ),
    ),
    prefixText: '+91',
  );
}
