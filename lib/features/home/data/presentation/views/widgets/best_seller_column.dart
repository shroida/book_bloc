import 'package:book_bloc/features/home/data/presentation/views/widgets/best_seller_item.dart';
import 'package:flutter/material.dart';

class BestSellerColumn extends StatelessWidget {
  const BestSellerColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 10,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: BestSellerItem(),
          );
        });
  }
}
