import 'package:flutter/material.dart';


class DetailTopBar extends StatelessWidget {

  final String name;
  final String number;


  DetailTopBar({
    super.key,
    required this.name,
    required this.number
  });

  late final _titleWidget = Text(
    name,
    style: TextStyle(
        color: Colors.white,
        fontSize: 24,
        fontWeight: FontWeight.w700
    ),
  );

  late final _numberWidget = Text(
      "#$number",
    style: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w700,
      fontSize: 12
    ),
  );


  @override
  Widget build(BuildContext context) {
    return Center(
      child:
      SizedBox(
        width: 312,
        height: 32,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                        Icons.arrow_back,
                        color: Colors.white
                    ),
                  ),
                  SizedBox(width: 16),
                  _titleWidget
                ],
              ),
              _numberWidget
            ],
          ),
        ),
      ),
    );
  }
}