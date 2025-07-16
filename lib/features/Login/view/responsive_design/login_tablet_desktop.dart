import 'package:common/theme/theme.dart';
import 'package:flutter/material.dart';

class LoginTabletDesktop extends StatelessWidget {
  const LoginTabletDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.only(left: 80, top: 80),
            decoration: BoxDecoration(color: context.primary50),
            child: Expanded(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(children: [Image.asset('assets/images/logo.png')]),
                  SizedBox(height: 64),
                  Text(
                    'Turn property buying into an exciting adventure.',
                    style: context.fourtyEight700,
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Experience AI-driven recommendations, immersive virtual tours, and exclusive off-market listings, all in one place.',
                    style: context.sixteen400,
                  ),
                ],
              ),
            ),
          ),
          Expanded(flex: 3, child: Container()),
        ],
      ),
    );
  }
}
