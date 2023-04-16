import 'package:being/main.dart';
import 'package:being/views/screens/discomfor_screen_empty.dart';
import 'package:being/views/screens/discomfor_screen_non_empty.dart';
import 'package:flutter/material.dart';

const Color bottomnavColor = Color(0xFF070B15);
const Color yellowColor = Color(0xFFC3E71D);
const Color backgroundColor = Color(0xFF060C1A);
const Color whiteColor = Colors.white;
var pageindex = [
  isDoscomfortPresent ? DiscomfortNonEmpty() : DiscomfortScreenEmpty(),
  Center(
    child: Text("therepy"),
  ),
  Center(
    child: Text("progress"),
  )
];
