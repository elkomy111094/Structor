import 'package:flutter/material.dart';

/// Defines reusable shadow styles for the app.
class AppShadows {
  static const BoxShadow subtle = BoxShadow(
    color: Colors.black12,
    blurRadius: 4,
    offset: Offset(0, 2),
  );

  static const BoxShadow medium = BoxShadow(
    color: Colors.black26,
    blurRadius: 8,
    offset: Offset(0, 4),
  );

  static const BoxShadow strong = BoxShadow(
    color: Colors.black38,
    blurRadius: 12,
    offset: Offset(0, 6),
  );
}
