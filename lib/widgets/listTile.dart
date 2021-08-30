import 'package:flutter/material.dart';
import 'package:slicing_slide/theme.dart';

class ListTile1 extends StatelessWidget {
  String? judul;
  String? subjudul;
  Color red = textColorRed;

  ListTile1({
    @required this.judul,
    this.subjudul = 'ok',
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              judul!,
              style: textStyleBlack.copyWith(fontWeight: semiBold),
            ),
            Text(
              subjudul!,
              style: textStyleRed.copyWith(fontWeight: semiBold),
            ),
          ],
        ),
        SizedBox(
          height: 5,
        )
      ],
    );
  }
}
