export 'ui_spacing.dart';
export 'ui_colors.dart';
export 'ui_text_style.dart';
export 'ui_icons.dart';

import 'dart:ui';

import 'package:crypto_exchange/style/ui_spacing.dart';
import 'package:flutter/material.dart';

Widget backgoundBlur(Widget child) => ClipRRect(
      borderRadius: UiSpacing.borderRadiusRegular,
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
        child: child,
      ),
    );
