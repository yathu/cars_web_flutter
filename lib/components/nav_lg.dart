import 'package:cars_web_app/theme/colors.dart';
import 'package:flutter/material.dart';

class NavBarLg extends StatelessWidget {
  const NavBarLg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 12),
      decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(width: 1, color: borderLightGrey)),
      ),
      height: 85,
      child: Row(
        children: [
          const Expanded(
            flex: 3,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(),
                  hintText: 'Mobile Number',
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 15, vertical: 0),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: borderGrey, width: 1.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: borderGrey, width: 1.0),
                  ),
                ),
              ),
            ),
          ),
          const Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.keyboard_arrow_down_rounded),
                  border: OutlineInputBorder(),
                  hintText: 'Mobile Number',
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 15, vertical: 0),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: borderGrey, width: 1.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: borderGrey, width: 1.0),
                  ),
                ),
              ),
            ),
          ),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  const Icon(Icons.notifications_none_rounded),
                  const Icon(Icons.person_outline_rounded),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.network(
                      'https://picsum.photos/250?image=11',
                      width: 30,
                      height: 30,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
