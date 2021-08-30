import 'package:flutter/material.dart';
import 'package:slicing_slide/theme.dart';
import 'package:slicing_slide/widgets/datalist.dart';
import 'package:slicing_slide/widgets/listTile.dart';

class HomePage extends StatelessWidget {
  var scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        color: Colors.blue,
        margin: EdgeInsets.symmetric(horizontal: 2),
        height: 72,
        child: Center(
          child: Row(
            children: [
              SizedBox(
                width: 10,
              ),
              GestureDetector(
                onTap: () {
                  scaffoldKey.currentState!.openDrawer();
                },
                child: Image.asset(
                  "assets/drawer.png",
                  width: 24,
                ),
              ),
              SizedBox(
                width: 14,
              ),
              Image.asset(
                "assets/icon.png",
                width: 40,
              ),
              SizedBox(
                width: 10,
              ),
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 17,
                    ),
                    Text(
                      "Riwayat",
                      style: textStyleWhite.copyWith(
                          fontSize: 10, fontWeight: medium),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Semua Simbol",
                      style: textStyleWhite.copyWith(
                          fontWeight: medium, fontSize: 14),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 54,
              ),
              Image.asset(
                'assets/money_arrow.png',
                width: 26,
              ),
              SizedBox(
                width: 20,
              ),
              Image.asset(
                "assets/arrow.png",
                width: 26,
              ),
              SizedBox(
                width: 26,
              ),
              Image.asset(
                "assets/calender.png",
                width: 24,
              )
            ],
          ),
        ),
      );
    }

    Widget body() {
      return SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Expanded(
          child: Column(
            children: [
              SizedBox(height: 10),
              categoryList("Keuntungan:", "-1 434.61", textColorRed),
              SizedBox(
                height: 5,
              ),
              categoryList(
                "Deposito:",
                "5 300.38",
              ),
              SizedBox(
                height: 5,
              ),
              categoryList(
                "Penarikan:",
                "-5 154.71",
              ),
              SizedBox(
                height: 5,
              ),
              categoryList(
                "Saldo:",
                "-1 288.94",
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                thickness: 1,
              ),
              SizedBox(
                height: 6,
              ),
              Datalist(
                judul: "Balance",
                tgl: "2021.08.26 15:37",
                subtgl: '25 000.00',
              ),
              Divider(
                thickness: 1,
              ),
              Datalist(
                judul: "Balance",
                tgl: "2021.08.26 15:37",
                subtgl: '25 000.00',
              ),
              Divider(
                thickness: 1,
              ),
              Datalist(
                judul: "XAUUSD.ecn ",
                tgl: '2021.08.26 15:37',
                beli: 'buy 4.01',
                subjudul: "1 784.40 -> 1 786.88",
                subtgl: "994.48",
              ),
              Divider(
                thickness: 1,
              ),
              Datalist(
                judul: "XAUUSD.ecn ",
                tgl: '2021.08.26 15:37',
                beli: 'buy 4.01',
                subjudul: "1 784.40 -> 1 786.88",
                subtgl: "994.48",
              ),
              Divider(
                thickness: 1,
              ),
              Datalist(
                judul: "XAUUSD.ecn ",
                tgl: '2021.08.26 15:37',
                beli: 'buy 4.01',
                subjudul: "1 784.40 -> 1 786.88",
                subtgl: "994.48",
              ),
              Divider(
                thickness: 1,
              ),
              Datalist(
                judul: "XAUUSD.ecn ",
                tgl: '2021.08.26 15:37',
                beli: 'buy 4.01',
                subjudul: "1 784.40 -> 1 786.88",
              ),
            ],
          ),
        ),
      );
    }

    Widget custovNav() {
      return BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Container(
          height: 56,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              IconButton(
                  icon: Image.asset("assets/two_arrow.png"), onPressed: () {}),
              IconButton(
                  icon: Image.asset("assets/chart.png"), onPressed: () {}),
              IconButton(
                  icon: Image.asset("assets/trade.png"), onPressed: () {}),
              IconButton(
                  icon: Image.asset("assets/riwayat.png"), onPressed: () {}),
              IconButton(
                  icon: Image.asset("assets/riwayat.png"), onPressed: () {}),
              IconButton(
                  icon: Image.asset("assets/riwayat.png"), onPressed: () {}),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      key: scaffoldKey,
      drawer: Drawer(),
      bottomNavigationBar: custovNav(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [header(), body()],
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Container categoryList(String judul, String subjudul,
      [Color defaul = Colors.lightBlue]) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 19),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            judul,
            style: textStyleBlack.copyWith(
              fontWeight: semiBold,
            ),
          ),
          Text(subjudul,
              style:
                  textStyleRed.copyWith(fontWeight: semiBold, color: defaul)),
        ],
      ),
    );
  }
}
