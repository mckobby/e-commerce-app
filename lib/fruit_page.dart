import 'package:flutter/material.dart';
import 'package:solid_grocery_mart/orange_page.dart';
import 'package:solid_grocery_mart/searchbar.dart';

class FruitPage extends StatefulWidget {
  const FruitPage({super.key});

  @override
  State<FruitPage> createState() => _FruitPageState();
}

final TextEditingController searchQueryController = TextEditingController();
bool isSearching = false;

class _FruitPageState extends State<FruitPage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  "images/bg2.png",
                ),
              ),
            ),
          ),
          LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              if (constraints.maxHeight > constraints.maxWidth) {
                return Padding(
                  padding: const EdgeInsets.fromLTRB(9, 20, 9, 5),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "FruitBasket",
                              style: TextStyle(
                                fontFamily: 'MrDafoe',
                                fontStyle: FontStyle.italic,
                                color: Colors.white,
                                fontSize: 28,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute<void>(
                                    builder: (BuildContext context) =>
                                        const SearchBar(),
                                  ),
                                );
                              },
                              icon: const Icon(
                                Icons.search,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            SizedBox(
                              height: height * 0.4,
                              child: const Image(
                                image: AssetImage(
                                  "images/wom.png",
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  "Popular Choices",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    // Navigator.of(context).push(
                                    //   MaterialPageRoute<void>(
                                    //     builder: (BuildContext context) =>
                                    //         const WelcomePage(),
                                    //   ),
                                    // );
                                  },
                                  child: const Text(
                                    "View all",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: height * 0.35,
                              child: GridView(
                                padding: const EdgeInsets.only(top: 5),
                                shrinkWrap: true,
                                physics: const AlwaysScrollableScrollPhysics(),
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                  childAspectRatio: 1.2,
                                  crossAxisCount: 2,
                                  crossAxisSpacing: width * 0.015,
                                ),
                                children: [
                                  const Image(
                                    alignment: Alignment.topCenter,
                                    image: AssetImage(
                                      "images/bo1.png",
                                    ),
                                  ),
                                  const Image(
                                    image: AssetImage(
                                      "images/bo2.png",
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.of(context).push(
                                        MaterialPageRoute<void>(
                                          builder: (BuildContext context) =>
                                              const OrangePage(),
                                        ),
                                      );
                                    },
                                    child: const Image(
                                      alignment: Alignment.topCenter,
                                      image: AssetImage(
                                        "images/bo3.png",
                                      ),
                                    ),
                                  ),
                                  const Image(
                                    image: AssetImage(
                                      "images/bo4.png",
                                    ),
                                  ),
                                  const Image(
                                    alignment: Alignment.topCenter,
                                    image: AssetImage(
                                      "images/bo1.png",
                                    ),
                                  ),
                                  const Image(
                                    image: AssetImage(
                                      "images/bo2.png",
                                    ),
                                  ),
                                  const Image(
                                    alignment: Alignment.topCenter,
                                    image: AssetImage(
                                      "images/bo3.png",
                                    ),
                                  ),
                                  const Image(
                                    image: AssetImage(
                                      "images/bo4.png",
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: height * 0.045,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 15,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: const [
                                  Image(
                                    image: AssetImage(
                                      "images/fruu.png",
                                    ),
                                    width: 100,
                                  ),
                                  Image(
                                    image: AssetImage(
                                      "images/fre.png",
                                    ),
                                    width: 100,
                                  ),
                                  Image(
                                    image: AssetImage(
                                      "images/bn.png",
                                    ),
                                    width: 100,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: height * 0.02,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                );
              } else {
                return Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: width,
                      child: SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    "FruitBasket",
                                    style: TextStyle(
                                      fontFamily: 'MrDafoe',
                                      fontStyle: FontStyle.italic,
                                      color: Colors.white,
                                      fontSize: 28,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () {
                                      Navigator.of(context).push(
                                        MaterialPageRoute<void>(
                                          builder: (BuildContext context) =>
                                              const SearchBar(),
                                        ),
                                      );
                                    },
                                    icon: const Icon(
                                      Icons.search,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    height: height * 0.65,
                                    child: const Image(
                                      image: AssetImage(
                                        "images/wom.png",
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: width * 0.03,
                                  ),
                                  SizedBox(
                                    width: width * 0.541,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            const Text(
                                              "Popular Choices",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            InkWell(
                                              onTap: () {
                                                // Navigator.of(context).push(
                                                //   MaterialPageRoute<void>(
                                                //     builder: (BuildContext context) =>
                                                //         const WelcomePage(),
                                                //   ),
                                                // );
                                              },
                                              child: const Text(
                                                "View all",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 15,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: height * 0.02,
                                        ),
                                        SizedBox(
                                          height: height * 0.6,
                                          child: GridView(
                                            scrollDirection: Axis.horizontal,
                                            shrinkWrap: true,
                                            physics:
                                                const AlwaysScrollableScrollPhysics(),
                                            gridDelegate:
                                                SliverGridDelegateWithFixedCrossAxisCount(
                                              childAspectRatio: 0.75,
                                              crossAxisCount: 2,
                                              crossAxisSpacing: width * 0.005,
                                            ),
                                            children: [
                                              const Image(
                                                alignment: Alignment.topCenter,
                                                image: AssetImage(
                                                  "images/bo1.png",
                                                ),
                                              ),
                                              const Image(
                                                image: AssetImage(
                                                  "images/bo2.png",
                                                ),
                                              ),
                                              GestureDetector(
                                                onTap: () {
                                                  Navigator.of(context).push(
                                                    MaterialPageRoute<void>(
                                                      builder: (BuildContext context) =>
                                                          const OrangePage(),
                                                    ),
                                                  );
                                                },
                                                child: const Image(
                                                  alignment:
                                                      Alignment.topCenter,
                                                  image: AssetImage(
                                                    "images/bo3.png",
                                                  ),
                                                ),
                                              ),
                                              const Image(
                                                image: AssetImage(
                                                  "images/bo4.png",
                                                ),
                                              ),
                                              const Image(
                                                alignment: Alignment.topCenter,
                                                image: AssetImage(
                                                  "images/bo1.png",
                                                ),
                                              ),
                                              const Image(
                                                image: AssetImage(
                                                  "images/bo2.png",
                                                ),
                                              ),
                                              const Image(
                                                alignment: Alignment.topCenter,
                                                image: AssetImage(
                                                  "images/bo3.png",
                                                ),
                                              ),
                                              const Image(
                                                image: AssetImage(
                                                  "images/bo4.png",
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: height * 0.02,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Image(
                                    image: AssetImage(
                                      "images/fruu.png",
                                    ),
                                    width: 100,
                                  ),
                                  SizedBox(
                                    width: width * 0.15,
                                  ),
                                  const Image(
                                    image: AssetImage(
                                      "images/fre.png",
                                    ),
                                    width: 100,
                                  ),
                                  SizedBox(
                                    width: width * 0.15,
                                  ),
                                  const Image(
                                    image: AssetImage(
                                      "images/bn.png",
                                    ),
                                    width: 100,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
