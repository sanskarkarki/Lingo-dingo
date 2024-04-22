import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_lingodingo/core/constants/urls.dart';

class LanguageAvatar extends StatelessWidget {
  const LanguageAvatar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: const Padding(
        padding: EdgeInsets.all(5.0),
        child: SizedBox(
            height: 30,
            width: 30,
            child: Image(
              image: NetworkImage(spainFlag),
            )),
      ),
    );
  }
}
