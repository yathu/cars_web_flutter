import 'package:cars_web_app/controllers/car_color_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CarPreview extends StatelessWidget {
  const CarPreview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(15, 40, 25, 15),
      margin: const EdgeInsets.fromLTRB(0, 15, 0, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(25, 25, 0, 0),
            child: Text(
              'Infinity Renault~',
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
          Expanded(child: Consumer<CarColorController>(
            builder: (context, carColorModel, child) {
              return Container(
                margin: const EdgeInsets.all(25),
                decoration: BoxDecoration(
                  color: carColorModel.carColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Image.asset(
                    'assets/img/car.png',
                    fit: BoxFit.cover,
                  ),
                ),
              );
            },
          )),
        ],
      ),
    );
  }
}
