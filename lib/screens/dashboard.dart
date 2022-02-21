import 'package:cars_web_app/components/dashboard_content.dart';
import 'package:cars_web_app/components/nav_lg.dart';
import 'package:cars_web_app/theme/colors.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        leftMenu(),
        Expanded(
          flex: 5,
          child: Container(
            color: dashboardContentBg,
            child: Column(
              children: const [
                NavBarLg(),
                Expanded(child: DashBoardContent()),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget leftMenu() {
    return Container(
      width: 200,
      padding: const EdgeInsets.all(15),
      decoration: const BoxDecoration(
        color: Colors.white,
          border: Border(
              right: BorderSide(
                color: borderLightGrey,
                width: 1,
              ))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          DrawerHeader(
            margin: const EdgeInsets.fromLTRB(0, 0, 0, 30),
            child: Image.asset(
              'assets/img/logo.png',
              height: 20,
            ),
          ),
          menuItem("Home", Icons.home),
          menuItem("Garage", Icons.weekend),
          menuItem("Payment", Icons.account_balance_wallet),
          menuItem("Installments", Icons.business_center),
          menuItem("Insurance", Icons.security),
          menuItem("Setting", Icons.settings),
        ],
      ),
    );
  }

  Widget menuItem(String title, IconData icon) {
    return ListTile(
      horizontalTitleGap: 0.0,
      leading: Icon(icon,size: 20,),
      title: Text(title),
    );
  }
}
