import 'package:flutter/material.dart';
import 'package:responsive_example/responsive.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: MobileTabHome(),
      tablet: MobileTabHome(),
      laptop: LaptopDesktopHome(),
      desktop: LaptopDesktopHome(),
    );
  }
}

class MobileTabHome extends StatelessWidget {
  const MobileTabHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('Mobile Or Tab'),
      ),
    );
  }
}

class LaptopDesktopHome extends StatelessWidget {
  const LaptopDesktopHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('Laptop or Desktop'),
      ),
    );
  }
}
