import 'package:flutter/material.dart';

extension ext1 on int {
  width() {
    return SizedBox(width: toDouble(),);
  }

  height() {
    return SizedBox(height: toDouble(),);
  }
}
