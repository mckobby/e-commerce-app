import 'package:flutter/material.dart';
import 'package:solid_grocery_mart/fruit_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

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
                  "images/bg1.png",
                ),
              ),
            ),
          ),
          LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              if (constraints.maxHeight > constraints.maxWidth) {
                return Padding(
                  padding: const EdgeInsets.fromLTRB(9, 20, 9, 5),
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
                              popupMenu(context);
                            },
                            icon: const Icon(
                              Icons.menu,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.24,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Welcome",
                                style: TextStyle(
                                  color: Colors.yellow,
                                  fontSize: 35,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const Text(
                                "To fruit basket",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              SizedBox(
                                height: height * 0.02,
                              ),
                              SizedBox(
                                width: width * 0.45,
                                child: const Text(
                                  "daAdipisicing ipsum ullamco ullamco nisi dolore quis"
                                  "labore est laborum. Cillum consectetur id eiusmod"
                                  "laboris laboris quis",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: height * 0.04,
                              ),
                              GestureDetector(
                                onTap: () {
                                  // Navigator.of(context).push(
                                  //   MaterialPageRoute<void>(
                                  //     builder: (BuildContext context) =>
                                  //         const SignupPage(),
                                  //   ),
                                  // );
                                },
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute<void>(
                                        builder: (BuildContext context) =>
                                            const FruitPage(),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    height: height * 0.03,
                                    width: width * 0.22,
                                    decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(7),
                                        topRight: Radius.circular(7),
                                        bottomLeft: Radius.circular(7),
                                      ),
                                      color: Colors.yellow,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 4),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: const [
                                          Text(
                                            "View More",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 13,
                                            ),
                                          ),
                                          Icon(
                                            Icons.arrow_right_alt,
                                            color: Colors.black,
                                            size: 15,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: const [
                              Image(
                                image: AssetImage(
                                  "images/pear.png",
                                ),
                                width: 180,
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.2,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 15,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                    ],
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
                                      popupMenu(context);
                                    },
                                    icon: const Icon(
                                      Icons.menu,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: height * 0.015,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        "Welcome",
                                        style: TextStyle(
                                          color: Colors.yellow,
                                          fontSize: 35,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const Text(
                                        "To fruit basket",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      SizedBox(
                                        height: height * 0.02,
                                      ),
                                      SizedBox(
                                        width: width * 0.45,
                                        child: const Text(
                                          "daAdipisicing ipsum ullamco ullamco nisi dolore quis"
                                          "labore est laborum. Cillum consectetur id eiusmod"
                                          "laboris laboris quis",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: height * 0.04,
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          // Navigator.of(context).push(
                                          //   MaterialPageRoute<void>(
                                          //     builder: (BuildContext context) =>
                                          //         const SignupPage(),
                                          //   ),
                                          // );
                                        },
                                        child: GestureDetector(
                                          onTap: () {
                                            Navigator.of(context).push(
                                              MaterialPageRoute<void>(
                                                builder:
                                                    (BuildContext context) =>
                                                        const FruitPage(),
                                              ),
                                            );
                                          },
                                          child: Container(
                                            height: height * 0.06,
                                            width: width * 0.11,
                                            decoration: const BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(7),
                                                topRight: Radius.circular(7),
                                                bottomLeft: Radius.circular(7),
                                              ),
                                              color: Colors.yellow,
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 4),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: const [
                                                  Text(
                                                    "View More",
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 13,
                                                    ),
                                                  ),
                                                  Icon(
                                                    Icons.arrow_right_alt,
                                                    color: Colors.black,
                                                    size: 15,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: const [
                                      Image(
                                        image: AssetImage(
                                          "images/pear.png",
                                        ),
                                        width: 170,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: height * 0.015,
                              ),
                              Row(
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

  void popupMenu(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    final List<PopupMenuEntry<int>> popupItems = [
      const PopupMenuItem(
        value: 1,
        child: ListTile(
          // leading: Icon(Icons.shopping_bag),
          title: Text('Fresh fruits'),
        ),
      ),
      const PopupMenuItem(
        value: 2,
        child: ListTile(
          // leading: Icon(Icons.delivery_dining),
          title: Text('Proc fruits'),
        ),
      ),
      const PopupMenuItem(
        value: 3,
        child: ListTile(
          // leading: Icon(Icons.factory),
          title: Text('Both'),
        ),
      ),
    ];

    showMenu<int>(
      color: Colors.yellow,
      context: context,
      position: RelativeRect.fromLTRB(
        screenSize.width,
        kToolbarHeight - 20.0,
        screenSize.width,
        screenSize.height,
      ),
      items: popupItems,
    ).then((value) {
      if (value != null) {
        // Handle the selected menu item
        switch (value) {
          case 1:
            break;
          case 2:
            break;
          case 3:
            break;
        }
      }
    });
  }
}
