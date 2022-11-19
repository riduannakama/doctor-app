import 'package:uas_project/constants/color.dart';
import 'package:uas_project/constants/text.dart';
import 'package:uas_project/data/data.dart';
import 'package:uas_project/models/information_model.dart';
import 'package:uas_project/models/service_model.dart';
import 'package:flutter/material.dart';
import 'package:uas_project/widget/appbar.dart';
import 'package:uas_project/widget/doctor_info.dart';
import 'package:uas_project/widget/medic_service.dart';
import 'package:uas_project/widget/textbox.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<MedicalServicesModel> medicalServices = medicalService;
    final List<DoctorInformationModel> doctorInformations = doctorInformation;
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                CustomAppBar(
                  backButton: false,
                  profile: true,
                  icon: Icons.sort,
                ),
                const SizedBox(height: 20),
                Text(
                  AppText.findDoctor,
                  style: Theme.of(context).textTheme.headline1,
                ),
                const SizedBox(height: 20),
                const CustomTextBox(),
                const SizedBox(height: 20),
                MedicalServices(medicalServices: medicalServices),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      AppText.topDoctors,
                      style: Theme.of(context).textTheme.headline3,
                    ),
                    Text(
                      AppText.viewAll,
                      style: Theme.of(context).textTheme.headline6!.copyWith(
                          color: AppColors.blue, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                DoctorInformation(doctorInformations: doctorInformations),
                const SizedBox(height: 15),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
