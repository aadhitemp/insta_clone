import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

pickImage(ImageSource source) async {
  final ImagePicker _imagePicker =
      ImagePicker(); //The ios app of this needs further configuration
  XFile? _file = await _imagePicker.pickImage(source: source);

  if (_file != null) {
    //return await _file.readAsBytes();// this may not work in flutter web
    return File(_file.path); //so we use this instead
  }
}

showSnackBar(String content, BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(content),
    ),
  );
}
