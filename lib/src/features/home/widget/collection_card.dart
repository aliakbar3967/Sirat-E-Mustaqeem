import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/sirat_card.dart';
import '../model/collection.dart';
import 'collection_button.dart';

class CollectionCard extends StatelessWidget {
  const CollectionCard();

  @override
  Widget build(BuildContext context) {
    return SiratCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Collection',
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          SizedBox(
            height: 16.h,
          ),
          // Display collections in rows of 3
          for (int i = 0; i < collections.length; i += 3)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                // Display up to 3 collections in a row
                (i + 3 > collections.length) ? collections.length - i : 3,
                (index) {
                  return Expanded(
                    child: Card(
                      color: Colors.amberAccent,
                      elevation: 4.0,
                      shadowColor: Colors.black,
                      child: CollectionButton(
                        
                        collections[i + index],
                      ),
                    ),
                  );
                },
              ),
            ),
        ],
      ),
    );
  }
}

