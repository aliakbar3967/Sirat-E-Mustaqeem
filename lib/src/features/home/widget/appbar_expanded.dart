import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/util/bloc/theme/theme_bloc.dart';
import 'kiblat_card.dart';

class AppBarExpanded extends StatelessWidget {
  const AppBarExpanded();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1.sw,
      height: 0.2.sh,
      child: Stack(
        children: [
          BlocBuilder<ThemeBloc, ThemeState>(
            builder: (context, state) {
             return Container(
  width: 1.sw,
  height: 0.3.sh,
  color: Colors.white,  // Set the background color to #FFFFFF  
);

            },
          ),
          Container(
            width: 1.sw,
            height: 0.3.sh,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.amber,
                  Colors.white,
                  // Theme.of(context).primaryColor.withOpacity(0.5),
                  
                ],
                stops: [0.2, 1],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Masjid Mode',
                  
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        fontWeight: FontWeight.bold,fontSize: 24.0,
                      ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 16.w,
                  ),
                  child: KiblatCard(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
