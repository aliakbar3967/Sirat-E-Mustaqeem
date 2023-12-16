import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../routes/routes.dart';
import '../../../core/util/constants.dart';
import '../../utils/coming_soon_dialog.dart';
import 'prayer_timing_widget.dart';

class KiblatCard extends StatelessWidget {
  const KiblatCard();

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16.r),
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 3,
          sigmaY: 3,
        ),
        child: Container(
          padding: kCardPadding,
          decoration: BoxDecoration(
            color: const Color(0xFFF5AC1C),  // Set the background color to #F5AC1C
            borderRadius: kCardBorderRadius,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: PrayerTimingWidget(),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed(RouteGenerator.qibla);
                    },
                    child: SvgPicture.asset(
                      'assets/images/home_icon/svg/kiblat.svg',
                      width: 64.w,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
