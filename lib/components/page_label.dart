import 'package:flutter/material.dart';

RichText pageLabel(String title) {
  return RichText(
    text: TextSpan(
      text: "Page | ",
      style: const TextStyle(
          color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20.0),
      children: [
        TextSpan(
          text: title,
          style: const TextStyle(fontWeight: FontWeight.normal),
        ),
      ],
    ),
  );
}
