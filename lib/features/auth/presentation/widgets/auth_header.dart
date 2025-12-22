import 'package:flutter/widgets.dart';

class AuthHeader extends StatelessWidget {
  const AuthHeader({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Image.asset(
      'assets/images/route_auth.png',
      height: screenSize.height * 0.1,
      width: screenSize.width,
    );
  }
}
