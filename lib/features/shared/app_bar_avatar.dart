import 'package:flutter/material.dart';

import '../../core/constants/asset_paths.dart';

class AppBarAvatar extends StatelessWidget {
  const AppBarAvatar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 25,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(40),
        child: Image.asset(
          AssetPaths.profile,
          height: 50,
          width: 50,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}