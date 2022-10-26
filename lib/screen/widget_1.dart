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
              top: MediaQuery.of(context).size.height * .5,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * .5,
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
                  padding: const EdgeInsets.only(top: 450, left: 15),
                  child: SizedBox(
                    width: 300.0,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => First_screen(),
                            ));
                      },
                      child: const Text(
                        "1st Text",
                        style: TextStyle(color: Colors.white, fontSize: 18),
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
                  padding: const EdgeInsets.only(top: 45),
                  child: Center(
                    child: Text(
                      '2nd Text',
                      style: TextStyle(color: Color(0xff2F8254), fontSize: 20),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30, left: 10, right: 10),
                  child: Row(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * .4,
                        child: const DecoratedBox(
                          decoration: BoxDecoration(color: Colors.black),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 30,
                        ),
                        child: Text(
                          '3rd text',
                          style: TextStyle(color: Color(0xffBEB3B3)),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * .4,
                        child: const DecoratedBox(
                          decoration: BoxDecoration(color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25, left: 15),
                  child: SizedBox(
                    width: 300.0,
                    child: ElevatedButton(
                      onPressed: () {
                        // Navigator.pushNamed(context, 'first_screen');
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => First_screen(),
                            ));
                        // Navigator.pushReplacement(
                        //     context,
                        //     MaterialPageRoute(
                        //       builder: (context) => First_screen(),
                        //     ));
                      },
                      child: const Text(
                        "4th Text",
                        style:
                            TextStyle(color: Color(0xff147868), fontSize: 18),
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
