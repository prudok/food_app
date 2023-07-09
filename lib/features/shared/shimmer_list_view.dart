import 'package:flutter/material.dart';
import 'package:food_app/features/shared/shimmer_container.dart';


class ShimmerListView extends StatelessWidget {
  const ShimmerListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 4,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      itemBuilder: (context, index) {
        return const ShimmerContainer();
      },
      separatorBuilder: (BuildContext context, int index) {
        return const SizedBox(height: 15);
      },
    );
  }
}
