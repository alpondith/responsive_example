import 'package:flutter/material.dart';

const int mobileTabletBreakpoint = 600;
const int tabletLaptopBreakpoint = 1200;
const int laptopDesktopBreakpoint = 1500;

enum DeviceType { MOBILE, TABLET, LAPTOP, DESKTOP }

class Device {
  double width;
  Device(this.width);

  DeviceType type() {
    if (width < mobileTabletBreakpoint) {
      return DeviceType.MOBILE;
    } else if (mobileTabletBreakpoint < width && width < tabletLaptopBreakpoint) {
      return DeviceType.TABLET;
    } else if (tabletLaptopBreakpoint < width && width < laptopDesktopBreakpoint) {
      return DeviceType.LAPTOP;
    } else {
      return DeviceType.DESKTOP;
    }
  }
}

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget laptop;
  final Widget desktop;

  Responsive({
    Key? key,
    required this.mobile,
    required this.tablet,
    required this.laptop,
    required this.desktop,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        Device device = Device(constraints.maxWidth);
        switch (device.type()) {
          case DeviceType.MOBILE:
            return mobile;
          case DeviceType.TABLET:
            return tablet;
          case DeviceType.LAPTOP:
            return laptop;
          case DeviceType.DESKTOP:
            return desktop;
          default:
            return Container(
              child: Text("Device Size Error"),
            );
        }
      },
    );
  }
}
