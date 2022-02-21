import 'package:cars_web_app/components/car_preview.dart';
import 'package:cars_web_app/components/car_preview_controller.dart';
import 'package:cars_web_app/controllers/car_color_controller.dart';
import 'package:cars_web_app/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DashBoardContent extends StatelessWidget {
  const DashBoardContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        cardMenu(),
        Expanded(
          child: ChangeNotifierProvider(
            create: (context)=> CarColorController(),
            child: Row(
              children: [
                const Flexible(flex:4, fit: FlexFit.tight, child: CarPreview()),
                Flexible(fit: FlexFit.loose, child: Center(child: PreviewColorManager(),)),
              ],
            ),
          ),
        )
      ],
    );
  }

  Widget cardMenu() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 50, 15, 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          cardMenuItem('assets/img/icons/vehicle.png', 'Start'),
          cardMenuItem('assets/img/icons/vehicle_2.png', 'Dive'),
          cardMenuItem('assets/img/icons/vehicle_3.png', 'Security'),
          cardMenuItem('assets/img/icons/vehicle_4.png', 'Updates'),
          cardMenuItem('assets/img/icons/vehicle_5.png', 'Tire'),
          cardMenuItem('assets/img/icons/vehicle_6.png', 'Setting'),
        ],
      ),
    );
  }

  Widget cardMenuItem(String imagePath, String title) {
    return Card(
        elevation: 20,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
        margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 30),
        child: Container(
          width: 75,
          height: 75,
          padding: const EdgeInsets.all(5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                imagePath,
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: Text(
                  title,
                  style: const TextStyle(fontSize: 12, color: textLight),
                ),
              )
            ],
          ),
        ));
  }
}
