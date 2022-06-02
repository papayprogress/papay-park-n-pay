import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:papay/presentation/core/app_theme.dart';
import 'package:papay/presentation/routes/app_router.dart';

class LocationPage extends StatelessWidget {
  const LocationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AutoRouter.of(context);
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            // Positioned(
            //   bottom: -100,
            //   right: -60,
            //   child: Image.asset('assets/other/gear.png'),
            // ),
            Column(
              children: [
                ListTile(
                  contentPadding: const EdgeInsets.all(30),
                  title: const Text(
                    "Cek Lokasi",
                    style: AppFont.headline3,
                  ),
                  subtitle: Text(
                    "Cari tempat parkir terdekat dari posisimu",
                    style:
                        AppFont.subhead3.copyWith(color: AppColor.greyPrimary),
                  ),
                  trailing: CircleAvatar(
                    backgroundColor: AppColor.primary,
                    child: IconButton(
                      color: AppColor.white,
                      onPressed: () {
                        context.router.push(const NotificationRoute());
                      },
                      icon: const Icon(Icons.notifications),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    color: Colors.grey,
                    child: const Center(
                      child: Icon(Icons.map, size: 24),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Lokasi Saat Ini',
                        style: AppFont.formLabel,
                      ),
                      const SizedBox(height: 8),
                      TextFormField(
                        decoration: const InputDecoration(
                          hintText: 'Jl. A.H. Nasution',
                          suffixIcon: Icon(
                            Icons.pin_drop,
                            color: AppColor.primary,
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      const Text(
                        'Tempat Servis Terdekat',
                        style: AppFont.formLabel,
                      ),
                      const SizedBox(height: 8),
                      DropdownButtonFormField2(
                        decoration: InputDecoration(
                          isDense: true,
                          contentPadding: EdgeInsets.zero,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        isExpanded: true,
                        hint: const Text(
                          'Pilih Lokasi',
                          style: AppFont.paragraph4,
                        ),
                        icon: const Icon(
                          Icons.arrow_drop_down,
                          color: AppColor.primary,
                        ),
                        iconSize: 30,
                        buttonHeight: 50,
                        buttonPadding:
                            const EdgeInsets.only(left: 20, right: 10),
                        dropdownDecoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        items: [
                          for (int i = 0; i < 4; i++)
                            DropdownMenuItem(
                              value: i,
                              child: Text(
                                'Value $i',
                                style: const TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                            ),
                        ],
                        // validator: (value) {
                        //   if (value == null) {
                        //     return 'Please select gender.';
                        //   }
                        // },
                        onChanged: (value) {
                          //Do something when changing the item if you want.
                        },
                        onSaved: (value) {
                          // selectedValue = value.toString();
                        },
                      ),
                      const SizedBox(height: 16),
                      FractionallySizedBox(
                        widthFactor: 1,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: const Text('Arahkan'),
                        ),
                      ),
                      const SizedBox(height: 16),
                      FractionallySizedBox(
                        widthFactor: 1,
                        child: OutlinedButton(
                          onPressed: () {
                            context.router.pop();
                          },
                          child: const Text('Kembali ke Menu Utama'),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
