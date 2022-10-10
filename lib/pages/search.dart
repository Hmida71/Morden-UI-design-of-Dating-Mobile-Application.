import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

import '../vr.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
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
            Container(
              width: widthT,
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              child: const Text(
                "Near you",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.2,
                ),
              ),
            ),
            Expanded(
              child: AnimationLimiter(
                child: GridView.count(
                  childAspectRatio: 0.9,
                  padding: const EdgeInsets.all(8.0),
                  physics: const BouncingScrollPhysics(),
                  crossAxisCount: 2,
                  children: List.generate(
                    user.length,
                    (int index) {
                      return AnimationConfiguration.staggeredGrid(
                        columnCount: 2,
                        position: index,
                        duration: const Duration(milliseconds: 375),
                        child: ScaleAnimation(
                          scale: 0.5,
                          child: FadeInAnimation(
                            child: Container(
                              width: 150,
                              height: 200,
                              margin: const EdgeInsets.only(
                                  top: 10, left: 10, right: 10, bottom: 10),
                              decoration: BoxDecoration(
                                  color: Colors.grey,
                                  image: DecorationImage(
                                      image: AssetImage(user[index]["img"]),
                                      fit: BoxFit.cover),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(35))),
                              child: Column(
                                children: [
                                  Expanded(
                                    flex: 4,
                                    child: Container(),
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            margin:
                                                const EdgeInsets.only(left: 15),
                                            child: Text(
                                              "${user[index]["name"]}, ${user[index]["age"]}",
                                              style: const TextStyle(
                                                color: Colors.white,
                                                fontSize: 14,
                                              ),
                                            ),
                                          ),
                                          Container(
                                              margin: const EdgeInsets.only(
                                                  right: 15),
                                              child: Icon(
                                                index == 1
                                                    ? Icons.favorite
                                                    : Icons.favorite_outline,
                                                color: Colors.white,
                                              )),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
