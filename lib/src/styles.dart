import 'package:flutter/material.dart';
import 'package:pam_flutter/src/input.dart';

const primary = Color(0xffffe600);
const bright = Color(0xffffffff);
const dark = Color(0xff333333);
const greyColor = Color(0xff5f5f5f);
const errRed = Color(0xffcc3333);

const barHeight = 75;

Text h1(String text,
        {Color color = bright, TextAlign textAlign = TextAlign.center}) =>
    Text(
      text,
      textAlign: textAlign,
      style: TextStyle(color: color, fontSize: 22, fontWeight: FontWeight.bold),
    );

Text h2(String text,
        {Color color = bright, TextAlign textAlign = TextAlign.center}) =>
    Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
        color: color,
        fontSize: 20,
        fontWeight: FontWeight.w600,
      ),
    );

Text h3(String text,
        {Color color = bright, TextAlign textAlign = TextAlign.center}) =>
    Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
        color: color,
        fontSize: 18,
        fontWeight: FontWeight.w500,
      ),
    );

Text p1(String text,
        {Color color = bright, TextAlign textAlign = TextAlign.center}) =>
    Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
        color: color,
        fontSize: 16,
        fontWeight: FontWeight.w400,
      ),
    );

inputDecorations(Input input, String? errMessage) => InputDecoration(
    focusedBorder:
        const UnderlineInputBorder(borderSide: BorderSide(color: primary)),
    enabledBorder:
        const UnderlineInputBorder(borderSide: BorderSide(color: greyColor)),
    hintText: input.hintText,
    hintStyle: const TextStyle(color: greyColor),
    errorBorder:
        const UnderlineInputBorder(borderSide: BorderSide(color: errRed)),
    errorText: errMessage,
    errorStyle: const TextStyle(color: errRed));
