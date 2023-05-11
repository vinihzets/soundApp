import 'package:flutter/material.dart';

enum AppTyphography {
  primary,
  secondary;
}

extension AppTyphographyColors on AppTyphography {
  getColor() {
    switch (this) {
      case AppTyphography.primary:
        return Colors.grey[950];
      case AppTyphography.secondary:
        return Colors.blue;
    }
  }
}
