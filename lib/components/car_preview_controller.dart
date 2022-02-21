import 'package:cars_web_app/controllers/car_color_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PreviewColorManager extends StatelessWidget {
  final List<Color> colors = [
    Colors.black,
    Colors.red,
    Colors.green,
    Colors.yellow,
    Colors.orange,
  ];

  PreviewColorManager({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ListView.builder(
          shrinkWrap: true,
          itemCount: colors.length,
          itemBuilder: (context, index) {
            return Align(
              alignment: Alignment.centerLeft,
              child: InkWell(
                onTap: (){
                  Provider.of<CarColorController>(context,listen: false).changeColor(colors[index]);
                },
                child: Container(
                  width: 30,
                  height: 30,
                  margin: const EdgeInsets.all(5),
                  // color: colors[index],
                  decoration:  BoxDecoration(
                    color: colors[index],
                    borderRadius: const BorderRadius.all(
                      Radius.circular(4.0),
                    )
                  ),
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
