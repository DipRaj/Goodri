import 'package:flutter/material.dart';
import 'package:gudri/enums/device_screen_type.dart';
import 'package:gudri/ui_config/base_widget.dart';

class ScreenTypeLayout extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;

  const ScreenTypeLayout({Key? key, required this.mobile, required this.tablet})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseWidget(
      builder: (context, sizingInformation) {
        if (sizingInformation.deviceScreenType == DeviceScreenType.Tablet) {
          return tablet;
        } else {
          return mobile;
        }
      },
    );
  }
}
