import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:papay/application/main_layout/main_layout_cubit.dart';
import 'package:papay/presentation/core/app_theme.dart';
import 'package:papay/presentation/routes/app_router.dart';

class ActionBlocWidget extends StatelessWidget {
  const ActionBlocWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              InkWell(
                onTap: () {
                  context.read<MainLayoutCubit>().changePage(1);
                },
                child: Container(
                  padding: const EdgeInsets.all(16),
                  decoration: const BoxDecoration(
                    color: AppColor.lightPrimary,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: const Icon(
                    Icons.auto_fix_high,
                    color: Colors.orange,
                  ),
                ),
              ),
              const SizedBox(height: 12),
              Text(
                'Reparasi',
                style: AppFont.paragraph4.copyWith(color: AppColor.black),
              ),
            ],
          ),
          Column(
            children: [
              InkWell(
                onTap: () {
                  context.read<MainLayoutCubit>().changePage(2);
                },
                child: Container(
                  padding: const EdgeInsets.all(16),
                  decoration: const BoxDecoration(
                    color: AppColor.lightPrimary,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: const FaIcon(
                    FontAwesomeIcons.ticket,
                    color: Colors.orange,
                  ),
                ),
              ),
              const SizedBox(height: 12),
              Text(
                'Tiket Aktif',
                style: AppFont.paragraph4.copyWith(color: AppColor.black),
              ),
            ],
          ),
          Column(
            children: [
              InkWell(
                onTap: () {
                  context.router.push(const LocationRoute());
                },
                child: Container(
                  padding: const EdgeInsets.all(16),
                  decoration: const BoxDecoration(
                    color: AppColor.lightPrimary,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: const FaIcon(
                    FontAwesomeIcons.mapLocation,
                    color: Colors.orange,
                  ),
                ),
              ),
              const SizedBox(height: 12),
              Text(
                'Cek Lokasi',
                style: AppFont.paragraph4.copyWith(color: AppColor.black),
              ),
            ],
          ),
          Column(
            children: [
              InkWell(
                onTap: () {
                  context.router.push(const SettingRoute());
                },
                child: const Material(
                  clipBehavior: Clip.hardEdge,
                  color: AppColor.lightPrimary,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  child: Padding(
                    padding: EdgeInsets.all(16),
                    child: Icon(
                      Icons.settings,
                      color: Colors.orange,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 12),
              Text(
                'Pengaturan',
                style: AppFont.paragraph4.copyWith(color: AppColor.black),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
