import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slicing_slide/theme.dart';

class Datalist extends StatelessWidget {
  String? judul;
  String? beli;
  String? tgl;
  String? subjudul;
  String? subtgl;

  Datalist(
      {required this.judul,
      required this.tgl,
      this.beli = "",
      this.subjudul = "",
      this.subtgl = ""});
  // ignore: empty_constructor_bodies
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 19),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    judul!,
                    style: textStyleBlack.copyWith(fontWeight: semiBold),
                  ),
                  Text(
                    beli!,
                    style: textStyleBlack.copyWith(
                        fontWeight: semiBold, color: Colors.lightBlue),
                  ),
                ],
              ),
              Text(
                subjudul!,
                style: textStyleWhite.copyWith(
                    fontWeight: medium, fontSize: 12, color: Colors.grey),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                children: [
                  Text(
                    tgl!,
                    style: textStyleBlack.copyWith(
                        fontWeight: reguler, fontSize: 12, color: Colors.grey),
                  ),
                ],
              ),
              Text(
                subtgl!,
                style: textStyleWhite.copyWith(
                    fontWeight: semiBold, color: Colors.blue),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
