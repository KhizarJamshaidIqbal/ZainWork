// ignore_for_file: camel_case_types, unused_import, unnecessary_import, implementation_imports, prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:zain/screen/first_screen.dart';

class zain extends StatefulWidget {
  const zain({super.key});

  @override
  State<zain> createState() => _zainState();
}

class _zainState extends State<zain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Image.asset("Images/img1.jpeg"),
            Positioned(
              top: MediaQuery.of(context).size.height * .4 / 5,
              left: MediaQuery.of(context).size.width * .24,
              child: SizedBox(
                child: Text(
                  "مرحبا بك",
                  style: TextStyle(
                    fontFamily: 'Cairo',
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold,
                    fontSize: 50.0,
                    color: Color(0xFFFFFFFF),
                  ),
                  textAlign: TextAlign.center,
                  textDirection: TextDirection.rtl,
                ),
                width: 202.0,
                height: 81.0,
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * .48,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * .6,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50)),
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 430, left: 15),
                  child: SizedBox(
                    width: 300.0,
                    height: 76.0,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => First_screen(),
                            ));
                      },
                      child: const Text(
                        "تسجيل الدخول",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontFamily: 'Cairo',
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w400,
                        ),
                        textDirection: TextDirection.rtl,
                      ),
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.all(25),
                        backgroundColor: Color(0xff147868),
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                        shadowColor: Colors.grey,
                        elevation: 6,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 36),
                  child: Center(
                    child: Text(
                      'المتابعة كضيف',
                      style: TextStyle(
                        color: Color(0xff2F8254),
                        fontFamily: 'Cairo',
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w400,
                        fontSize: 18.0,
                      ),
                      textDirection: TextDirection.rtl,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30, left: 10, right: 0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Container(
                          height: 1.0,
                          width: MediaQuery.of(context).size.width * .4,
                          color: Color(0xffBEB3B3),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15, right: 15),
                        child: Text(
                          'أو',
                          style: TextStyle(
                            color: Color(0xffBEB3B3),
                            fontFamily: 'Cairo',
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w400,
                            fontSize: 20.0,
                          ),
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: Container(
                          height: 1.0,
                          width: MediaQuery.of(context).size.width * .35,
                          color: Color(0xffBEB3B3),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 45, left: 15),
                  child: SizedBox(
                    width: 300.0,
                    height: 75.0,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => First_screen(),
                            ));
                      },
                      child: const Text(
                        "إنشاء حساب جديد",
                        style: TextStyle(
                          color: Color(0xff147868),
                          fontFamily: 'Cairo',
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w400,
                          fontSize: 20.0,
                        ),
                        textDirection: TextDirection.rtl,
                      ),
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.all(25),
                        backgroundColor: Color(0xffFFFFFF),
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                        shadowColor: Colors.grey,
                        side: BorderSide(
                          width: 1.0,
                          color: Color(0xff147868),
                        ),
                        elevation: 6,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
