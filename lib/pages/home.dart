import 'package:flutter/material.dart';

import '../vr.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    double widthT = MediaQuery.of(context).size.width;
    double heightT = MediaQuery.of(context).size.height;

    return SizedBox(
        height: heightT,
        width: widthT,
        child: Column(
          children: [
            SizedBox(
              height: 100,
              width: double.infinity,
              // color: Colors.green,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ...List.generate(
                        story.length,
                        (index) => Container(
                              margin: const EdgeInsets.only(bottom: 5, top: 5),
                              width: 100,
                              height: double.infinity,
                              // color: Colors.red,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  CircleAvatar(
                                    radius: 35,
                                    backgroundColor: index == 0
                                        ? Colors.white
                                        : index == 1
                                            ? Colors.pinkAccent
                                            : index == 2
                                                ? Colors.yellowAccent
                                                : Colors.purpleAccent,
                                    child: CircleAvatar(
                                      radius: 33,
                                      backgroundColor: Colors.pinkAccent,
                                      backgroundImage:
                                          AssetImage(story[index]["img"]),
                                    ),
                                  ),
                                  Text(
                                    story[index]["name"],
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ))
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: Container(
                width: double.infinity,
                margin: const EdgeInsets.only(
                    top: 5, left: 20, right: 20, bottom: 10),
                decoration: const BoxDecoration(
                    color: Colors.grey,
                    image: DecorationImage(
                        image: AssetImage("images/g1.jpg"), fit: BoxFit.cover),
                    borderRadius: BorderRadius.all(Radius.circular(35))),
                child: Column(
                  children: [
                    Expanded(
                      flex: 5,
                      child: Container(
                        alignment: Alignment.bottomCenter,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 60,
                                height: 60,
                                margin: const EdgeInsets.only(
                                    top: 5, left: 15, right: 15, bottom: 10),
                                decoration: const BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(18))),
                                child: const Icon(Icons.close,
                                    color: Colors.grey, size: 35),
                              ),
                              Container(
                                width: 70,
                                height: 70,
                                margin: const EdgeInsets.only(
                                    top: 5, left: 15, right: 15, bottom: 10),
                                decoration: BoxDecoration(
                                    color: colorApp,
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(18))),
                                child: const Icon(Icons.favorite_outline,
                                    color: Colors.white, size: 35),
                              ),
                              Container(
                                width: 60,
                                height: 60,
                                margin: const EdgeInsets.only(
                                    top: 5, left: 15, right: 15, bottom: 10),
                                decoration: const BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(18))),
                                child: const Icon(Icons.flash_on,
                                    color: Colors.orange, size: 35),
                              ),
                            ]),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(35),
                              bottomRight: Radius.circular(35)),
                          shape: BoxShape.rectangle,
                          color: Colors.black.withOpacity(0.7),
                          boxShadow: const <BoxShadow>[
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 5.0,
                              offset: Offset(5.0, 5.0),
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(left: 15),
                              child: const Text(
                                "Kelly Johnes, 22",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 23,
                                    letterSpacing: 1.2,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(right: 15),
                              child: const Text(
                                "2.46 Km",
                                style: TextStyle(
                                    fontSize: 15,
                                    letterSpacing: 1.2,
                                    color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
