import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class SideMenuTile extends StatelessWidget {
  const SideMenuTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      ListTile(
        onTap: () {},
        leading: SizedBox(
          height: 34,
          width: 34,
          child: RiveAnimation.asset(
            'assets/icons.riv',
            artboard: "HOME",
            onInit: (artboard) {},
          ),
        ),
      )
    ]);
  }
}
