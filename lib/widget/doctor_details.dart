import 'package:uas_project/constants/contants.dart';
import 'package:uas_project/widget/widgets.dart';
import 'package:flutter/material.dart';
import 'package:uas_project/widget/detail.dart';

class DoctorDetails extends StatelessWidget {
  const DoctorDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      height: 100,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          DetailInfo(
            text: AppText.experience,
            number: '3',
            subtitle: 'yr',
          ),
          VerticalDivider(
            indent: 20,
            endIndent: 20,
            thickness: 1,
            color: AppColors.textGrey,
          ),
          DetailInfo(
            text: AppText.patient,
            number: '1121',
            subtitle: ' ps',
          ),
          VerticalDivider(
            indent: 20,
            endIndent: 20,
            thickness: 1,
            color: AppColors.textGrey,
          ),
          DetailInfo(
            text: AppText.rating,
            number: '5.0',
          ),
        ],
      ),
    );
  }
}
