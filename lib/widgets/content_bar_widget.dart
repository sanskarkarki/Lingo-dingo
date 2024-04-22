import 'package:flutter/material.dart';
import 'package:flutter_lingodingo/core/theme/app_pallete.dart';

class ContentBar extends StatelessWidget {
  final String title;
  final String number;
  const ContentBar({
    super.key,
    required this.title,
    required this.number,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      borderRadius: BorderRadius.circular(10),
      child: Ink(
        height: 90,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppPallete.gradient1,
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "UNIT $number :".toUpperCase(),
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
