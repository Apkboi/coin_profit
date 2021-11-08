import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotel_app/Screens/RefferalDashboardScreen.dart';
import 'package:hotel_app/components/SideNavItem.dart';
import 'package:hotel_app/widgets/CoinIcon.dart';
import 'package:hotel_app/widgets/CustomButton.dart';
import 'package:device_info_platform_interface/device_info_platform_interface.dart';
import 'package:device_info/device_info.dart';


class SideNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.shade100, blurRadius: 5, spreadRadius: 0.6)
            ],
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), bottomLeft: Radius.circular(10))),
        height: 550,
        width: MediaQuery.of(context).size.width * 0.70,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Stack(children: [
                  CircleAvatar(
                    radius: 21,
                    backgroundColor: Colors.blue,
                  ),
                  Center(
                    child: CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage('assets/picture.JPG'),
                    ),
                  ),
                ]),
                SizedBox(
                  width: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Emmanuel Ohoroeko',
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Nigeria Abuja',
                      style: TextStyle(fontSize: 10),
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: 7,
            ),
            SizedBox.shrink(),
            CustomButton(
              text: 'upgrade',
              onTap: () {},
            ),
            Row(
              children: [
                Switch(value: true, onChanged: (value) {}),
                Text(
                  'Dark Mode',
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                )
              ],
            ),
            SizedBox.shrink(),
            ListView(
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              children: [
                SideNavItem(
                  tittle: 'Refferal Dashboard',
                  icon: Icons.accessible,
                  onTap: () =>
                      Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context)=>RefferalDashboardScreen())),
                ),
                SideNavItem(
                  tittle: 'If Calculator',
                  icon: Icons.backup_table_outlined,
                ),
                SideNavItem(
                  tittle: 'All Transaction',
                  icon: Icons.assessment_rounded,
                ),
                SideNavItem(
                  tittle: 'Settings',
                  icon: Icons.settings,
                ),
                SideNavItem(
                  tittle: 'Help/Support',
                  icon: Icons.phone,
                ),
                SideNavItem(
                  tittle: 'Rate App',
                  icon: Icons.star,
                ),
                SideNavItem(
                  tittle: 'Log out',
                  icon: Icons.exit_to_app,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
Future<void>  getDeviceName() async {
  DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
  AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
  print('Running on ${androidInfo.model}');  // e.g. "Moto G (4)"

  IosDeviceInfo iosInfo = await deviceInfo.iosInfo;
  print('Running on ${iosInfo.utsname.machine}');
}
