import 'package:flutter/material.dart';

import 'package:uas_project/constants/contants.dart';

class DetailInfo extends StatelessWidget {
  late final String text;
  late final String number;
  late final String? subtitle;
  //const DetailInfo(//{super.key});

  DetailInfo({
    Key? key,
    required this.text,
    required this.number,
    this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          text,
          style: Theme.of(context).textTheme.headline4,
        ),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: number,
                style: Theme.of(context).textTheme.headline2!.copyWith(
                      color: AppColors.blue,
                    ),
              ),
              TextSpan(
                text: subtitle,
                style: Theme.of(context)
                    .textTheme
                    .headline5!
                    .copyWith(color: AppColors.textGrey),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
