import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:myappscreen/modalclass.dart';

import 'charts.dart';

class Home_Screen extends StatefulWidget {
  @override
  _Home_ScreenState createState() => _Home_ScreenState();
}
Widget mywidet=SizedBox(height: 20,);
final List<goal_model> imgList = [
  goal_model(" increase ","in young interns hired",Container(
    height: 100,
    width: 100,
    child: SvgPicture.asset("assets/40.svg"),)),
  goal_model("of interns ","in tech roles to be women",Container(
    height: 100,
    width: 100,
    child: SvgPicture.asset("assets/15.svg"),)),
  goal_model(" of U.S. & U.K. ","interns to be BIPOC",Container(
    height: 100,
    width: 100,
    child: SvgPicture.asset("assets/24.svg"),)),
  goal_model("D&I training for all","employees over 2021",mywidet),
  goal_model("Introducing the ","Supplier Diversity Program",mywidet),
  goal_model("Transparency with ","employees on diversity data",mywidet),
  goal_model("increase in BIPOC ","in leadership positions within 5 years",Container(
    height: 100,
    width: 100,
    child: SvgPicture.asset("assets/30.svg"),)),
  goal_model("increase in women ","in leadership positions within 5 years",Container(
    height: 100,
    width: 100,
    child: SvgPicture.asset("assets/20.svg"),)),
  goal_model("Organisation's Diversity Council","to make £5M donation to related causes within 3 years",mywidet),




];


class _Home_ScreenState extends State<Home_Screen> {
  List<charts.Series> seriesList;
  int _current = 0;



  @override
  Widget build(BuildContext context) {
    List<Widget> imageSliders = imgList.map((item) => Container(
      child: Container(
        margin: EdgeInsets.all(5.0),
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            item.widget,
            SizedBox(height: 20,),
            Text(
              item.desc1,
              style: GoogleFonts.inter(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.white
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              item.desc2,
              style: GoogleFonts.poppins(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Colors.white.withOpacity(.4)),
              textAlign: TextAlign.center,

            ),

          ],
        ),
      ),
    )).toList();

    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Container(
              child: Image.asset(
            "assets/burger.png",
            width: 30,
          )),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(left: 02,right: 06,top: 8,bottom: 8),
            child: Image.asset("assets/logoo.png"),
          ),
        ],
        backgroundColor: Colors.white,
        title: Text(
          "Diversity Statistics Example",
          style: GoogleFonts.poppins(
              fontSize: 14,
              color: Colors.black.withOpacity(.8),
              fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    "Hi Imani",
                    style: GoogleFonts.poppins(
                        fontSize: 14,
                        color: Colors.black.withOpacity(.8),
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        child: Padding(
                            padding: const EdgeInsets.only(
                                left: 20, right: 20, top: 20),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      child: SvgPicture.asset(
                                        "assets/mypath.svg",
                                      ),
                                    ),
                                    SizedBox(
                                      width: 03,
                                    ),
                                    Container(
                                      child: Text(
                                        "2020 Figures",
                                        style: GoogleFonts.poppins(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                        maxLines: 3,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Column(
                                        children: [
                                          Container(
                                            width: 200,
                                            child: Text(
                                              "Number of different Ethnicities Within employyes in 2020",
                                              style: GoogleFonts.poppins(
                                                  fontSize: 08,
                                                  fontWeight: FontWeight.w400),
                                              maxLines: 3,
                                            ),
                                          ),
                                          Text(
                                            "18",
                                            style: GoogleFonts.poppins(
                                                fontSize: 56,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ],
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                      ),
                                      flex: 1,
                                    ),
                                    Expanded(
                                      child: Column(
                                        children: [
                                          Container(
                                            width: 200,
                                            child: Text(
                                              "Number of different Faiths Within employyes in 2020",
                                              style: GoogleFonts.poppins(
                                                  fontSize: 08,
                                                  fontWeight: FontWeight.w400),
                                              maxLines: 3,
                                            ),
                                          ),
                                          Text(
                                            "09",
                                            style: GoogleFonts.poppins(
                                                fontSize: 56,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ],
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                      ),
                                      flex: 1,
                                    ),
                                  ],
                                ),
//                                Container(
//                                  child: Row(
//                                    children: [
//                                      Expanded(
//                                        child: Container(
//                                          child: Row(
//                                            children: [
//                                              Container(
//                                                height: 37,
//                                                width: 37,
//                                                child: Image.asset(
//                                                    "assets/img.png"),
//                                              ),
//                                              SizedBox(
//                                                width: 15,
//                                              ),
//                                              Container(
//                                                width: 70,
//                                                child: Text(
//                                                  "Page views per minute",
//                                                  style: GoogleFonts.inter(
//                                                      fontSize: 12,
//                                                      fontWeight:
//                                                          FontWeight.w600),
//                                                  maxLines: 3,
//                                                ),
//                                              )
//                                            ],
//                                          ),
//                                        ),
//                                        flex: 1,
//                                      ),
//                                      Expanded(
//                                        child: Container(
//                                          child: Container(
//                                            width: 70,
//                                            child: Text(
//                                              "Update your payout method in Settings",
//                                              style: GoogleFonts.inter(
//                                                  fontSize: 12,
//                                                  fontWeight: FontWeight.w600,
//                                                  color: Colors.black
//                                                      .withOpacity(.3)),
//                                              maxLines: 3,
//                                            ),
//                                          ),
//                                        ),
//                                        flex: 1,
//                                      ),
//                                    ],
//                                  ),
//                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  height: 270,
                                  width: MediaQuery.of(context).size.width,
                                  child: SvgPicture.asset(
                                    "assets/mychart.svg",
                                    fit: BoxFit.fitWidth,
                                  ),
                                ),
                                SizedBox(
                                  height: 30,
                                ),
//                                Container(
//                                  width: MediaQuery.of(context).size.width,
//                                  height: 300,
//                                  decoration: BoxDecoration(
//                                    border: Border.all(
//                                        width: 1,
//                                        color: Colors.black.withOpacity(.2)),
//                                    borderRadius:
//                                        BorderRadius.all(Radius.circular(25)),
//                                  ),
//                                  child: Column(
//                                    children: [
//                                      Expanded(
//                                        flex: 1,
//                                        child: Container(
//                                          decoration: BoxDecoration(
//                                            border: Border(
//                                              bottom: BorderSide(
//                                                  width: 1.0,
//                                                  color: Colors.black
//                                                      .withOpacity(.2)),
//                                            ),
//                                          ),
//                                          child: Row(
//                                            children: [
//                                              Expanded(
//                                                child: Container(
//                                                    decoration: BoxDecoration(
//                                                      border: Border(
//                                                        right: BorderSide(
//                                                            width: 1.0,
//                                                            color: Colors.black
//                                                                .withOpacity(
//                                                                    .2)),
//                                                      ),
//                                                    ),
//                                                    child: boxreturn(
//                                                        "Users", "36k")),
//                                                flex: 1,
//                                              ),
//                                              Expanded(
//                                                child: Container(
//                                                  decoration: BoxDecoration(),
//                                                  child:
//                                                      boxreturn("Clicks", "1m"),
//                                                ),
//                                                flex: 1,
//                                              )
//                                            ],
//                                          ),
//                                        ),
//                                      ),
//                                      Expanded(
//                                        flex: 1,
//                                        child: Row(
//                                          children: [
//                                            Expanded(
//                                              child: Container(
//                                                decoration: BoxDecoration(
//                                                  border: Border(
//                                                    right: BorderSide(
//                                                        width: 1.0,
//                                                        color: Colors.black
//                                                            .withOpacity(.2)),
//                                                  ),
//                                                ),
//                                                child:
//                                                    boxreturn("Sales", "327\$"),
//                                              ),
//                                              flex: 1,
//                                            ),
//                                            Expanded(
//                                              child: Container(
//                                                decoration: BoxDecoration(),
//                                                child: boxreturn("Items", "68"),
//                                              ),
//                                              flex: 1,
//                                            )
//                                          ],
//                                        ),
//                                      ),
//                                    ],
//                                  ),
//                                ),
//                                SizedBox(
//                                  height: 40,
//                                )
                              ],
                            )),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 15,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 30, right: 30),
                              child: Text(
                                "Our Stats",
                                style: GoogleFonts.poppins(
                                    fontSize: 24, fontWeight: FontWeight.w600),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                      width: 1.0,
                                      color: Colors.black.withOpacity(.2)),
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 30, right: 30, bottom: 20),
                                child: Row(
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "% of LGBTQ + ",
                                            style: GoogleFonts.inter(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.black
                                                    .withOpacity(.4)),
                                          ),   Text(
                                            "Employees",
                                            style: GoogleFonts.inter(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.black
                                                    .withOpacity(.4)),
                                          ),

                                          Text(
                                            "in 2020",
                                            style: GoogleFonts.inter(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.green
                                                    .withOpacity(.4)),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.end,
                                          children: [
                                            Text(
                                              "04 %",
                                              style: GoogleFonts.poppins(
                                                  fontSize: 32,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ],
                                        )
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                      width: 1.0,
                                      color: Colors.black.withOpacity(.2)),
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 30, right: 30, bottom: 20),
                                child: Row(
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "% of Women in ",
                                            style: GoogleFonts.inter(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.black
                                                    .withOpacity(.4)),
                                          ),   Text(
                                            "Leadership positions",
                                            style: GoogleFonts.inter(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.black
                                                    .withOpacity(.4)),
                                          ),
                                          Text(
                                            "in 2020",
                                            style: GoogleFonts.inter(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.green
                                                    .withOpacity(.4)),
                                          ),

                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.end,
                                          children: [
                                            Text(
                                              "19 %",
                                              style: GoogleFonts.poppins(
                                                  fontSize: 32,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ],
                                        )
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                                child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Go To Settings",
                                  style: GoogleFonts.inter(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.deepPurpleAccent
                                          .withOpacity(.4)),
                                ),
                              ],
                            )),
                            SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 15,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 30, right: 30),
                              child: Text(
                                "New 2020 Stats",
                                style: GoogleFonts.poppins(
                                    fontSize: 20, fontWeight: FontWeight.w600),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 30, right: 30, bottom: 10),
                                child: progressicon("Gender Hiring Rate in 2020","For Women","export28"),
                              ),
                            ),
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 30, right: 30, bottom: 10),
                                child: progressicon("Rate of employees self","identifiying as non-binary","point"),
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: 60,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 30, right: 30, bottom: 10),
                                child: RaisedButton(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15.0),
                                      side: BorderSide(color: Colors.black)),
                                  onPressed: () {},
                                  color: Colors.black,
                                  textColor: Colors.white,
                                  child: Text("Discover more".toUpperCase(),
                                      style: GoogleFonts.poppins(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w700)),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Color(0xff6C5DD3),
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 15,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 30, right: 30),
                              child: Text(
                                "Past Six Years",
                                style: GoogleFonts.poppins(
                                    fontSize: 24,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 15, right: 15),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                ),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Container(
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 05, right: 05, bottom: 10),
                                        child: Container(
                                            height: 200,
                                            child: TimeSeriesConfidenceInterval
                                                .withSampleData()),
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width,
                                      height: 60,
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 30, right: 30, bottom: 10),
                                        child: RaisedButton(
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                              side: BorderSide(
                                                  color: Colors.black)),
                                          onPressed: () {},
                                          color: Colors.black,
                                          textColor: Colors.white,
                                          child: Text(
                                              "% of young interns hired over the past 6 years",
                                              style: GoogleFonts.poppins(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400),
                                          textAlign: TextAlign.center,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding:
                              const EdgeInsets.only(left: 15, right: 15),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                                ),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Container(
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 05, right: 05, bottom: 10),
                                        child: Container(
                                            height: 200,
                                            child: TimeSeriesConfidenceInterval2
                                                .withSampleData()),
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width,
                                      height: 80,
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 30, right: 30, bottom: 10),
                                        child: RaisedButton(
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                              BorderRadius.circular(10.0),
                                              side: BorderSide(
                                                  color: Colors.black)),
                                          onPressed: () {},
                                          color: Colors.black,
                                          textColor: Colors.white,
                                          child: Text(
                                            "Rate of employees self-identifiying as having a disabilty over the past 6 years",
                                            style: GoogleFonts.poppins(
                                                fontSize: 10,
                                                fontWeight: FontWeight.w400),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 0,
                ),
                Center(
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        height: 500,
                        child: SvgPicture.asset("assets/futuregoals.svg"),
                      ),
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height:100,
                              child: Text(
                                "Future Goals",
                                style: GoogleFonts.poppins(
                                    fontSize: 24,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                            Container(
                              height:250,
                              child: Column(
                                  children: [
                                    CarouselSlider(
                                      items: imageSliders,
                                      options: CarouselOptions(
                                          autoPlay: true,
                                          enlargeCenterPage: true,
                                          aspectRatio: 2.0,
                                          onPageChanged: (index, reason) {
                                            setState(() {
                                              _current = index;
                                            });
                                          }
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: imgList.map((url) {
                                        int index = imgList.indexOf(url);
                                        return Container(
                                          width: 8.0,
                                          height: 8.0,
                                          margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: _current == index
                                                ? Colors.white
                                                : Colors.white.withOpacity(.5),
                                          ),
                                        );
                                      }).toList(),
                                    ),
                                  ]
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 100,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget boxreturn(String name, String maintext) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                    width: 30,
                    height: 20,
                    child: SvgPicture.asset("assets/" + name + '.svg')),
                SizedBox(
                  width: 05,
                ),
                Text(
                  name,
                  style: GoogleFonts.inter(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.black.withOpacity(.4)),
                )
              ],
            ),
            Text(
              maintext,
              style: GoogleFonts.poppins(
                  fontSize: 38, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 07,
            ),
            SvgPicture.asset("assets/" + name + "-bar.svg")
          ],
        ),
      ),
    );
  }

  Widget progressicon(String text1,String text2,String svgtext) {
    return Row(
      children: [
        Expanded(
            flex: 3,
            child: Row(
              children: [

                Expanded(
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          text1,
                          style: GoogleFonts.inter(
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          text2,
                          style: GoogleFonts.poppins(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              color: Colors.black.withOpacity(.4)),
                        ),
                      ],
                    ),
                  ),
                  flex: 7,
                )
              ],
            )),
        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(child: SvgPicture.asset("assets/"+svgtext+".svg")),
          ),
        ),
      ],
    );
  }
}

// this code is for google charts
