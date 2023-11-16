import 'package:flutter/material.dart';

void openSnackBar(context, snackMessage, color) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      backgroundColor: color,
      action: SnackBarAction(
        label: "OK",
        textColor: Colors.white,
        onPressed: () {},
      ),
      duration: const Duration(milliseconds: 3000),
      content: Text(
        snackMessage,
        style: const TextStyle(fontSize: 14),
      )));
}
