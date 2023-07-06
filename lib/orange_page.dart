import 'package:flutter/material.dart';

class OrangePage extends StatelessWidget {
  const OrangePage({super.key});

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
                  'images/bg3.png',
                ),
              ),
            ),
          ),
          LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              if (constraints.maxHeight > constraints.maxWidth) {
                return Padding(
                  padding: const EdgeInsets.fromLTRB(9, 35, 9, 5),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.grey[700],
                            ),
                            height: 30,
                            width: 30,
                            child: IconButton(
                              padding: const EdgeInsets.all(3),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              icon: const Icon(
                                Icons.arrow_back,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.grey[700],
                            ),
                            height: 30,
                            width: 30,
                            child: IconButton(
                              padding: const EdgeInsets.all(3),
                              onPressed: () {},
                              icon: const Icon(
                                Icons.shopping_cart_outlined,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          const Image(
                            image: AssetImage(
                              'images/orc.png',
                            ),
                            height: 330,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    'Orange',
                                    style: TextStyle(
                                      color: Colors.yellow,
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    'Super Tasty',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.grey[700],
                                ),
                                height: 30,
                                width: 30,
                                child: IconButton(
                                  padding: const EdgeInsets.all(3),
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.favorite_outline,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: height * 0.02,
                          ),
                          const Text(
                            'Dolor et nostrud anim ex excepteur occaecat dolor.'
                            ' In laboris laboris enim fugiat quis. Tempor incididunt'
                            ' est in id ipsum est. Elit commodo laboris laboris fugiat.'
                            ' In laboris laboris enim fugiat quis.',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height: height * 0.07,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.grey[400],
                                ),
                                height: 30,
                                width: 30,
                                child: IconButton(
                                  padding: const EdgeInsets.all(2),
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.remove,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: width * 0.03,
                              ),
                              const Text(
                                '1',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 28,
                                ),
                              ),
                              SizedBox(
                                width: width * 0.03,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,
                                ),
                                height: 30,
                                width: 30,
                                child: IconButton(
                                  padding: const EdgeInsets.all(2),
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.add,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: width * 0.3,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    '\$5.20',
                                    style: TextStyle(
                                        fontSize: 28,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    'Total Price',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 17,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: height * 0.025,
                          ),
                          ElevatedButton(
                            style: ButtonStyle(
                              shape: MaterialStatePropertyAll(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                    15,
                                  ),
                                ),
                              ),
                              padding: MaterialStateProperty.all(
                                const EdgeInsets.symmetric(
                                  horizontal: 110,
                                  vertical: 15,
                                ),
                              ),
                              backgroundColor: const MaterialStatePropertyAll(
                                Colors.yellow,
                              ),
                            ),
                            onPressed: () {},
                            child: const Text(
                              'Add to cart',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              } else {
                return SingleChildScrollView(
                  child: Row(
                    children: [
                      SizedBox(
                        child: SizedBox(
                          width: width,
                          child: SingleChildScrollView(
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(20, 30, 20, 0),
                              child: Column(
                                children: [
                                  SizedBox(
                                    width: width-18,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(5),
                                            color: Colors.grey[700],
                                          ),
                                          height: 30,
                                          width: 30,
                                          child: IconButton(
                                            padding: const EdgeInsets.all(3),
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            },
                                            icon: const Icon(
                                              Icons.arrow_back,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(5),
                                            color: Colors.grey[700],
                                          ),
                                          height: 30,
                                          width: 30,
                                          child: IconButton(
                                            padding: const EdgeInsets.all(3),
                                            onPressed: () {},
                                            icon: const Icon(
                                              Icons.shopping_cart_outlined,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: width-18,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        const Image(
                                          image: AssetImage(
                                            'images/orc.png',
                                          ),
                                          height: 240,
                                        ),
                                        SizedBox(
                                          width: width * 0.5,
                                          height: height * 0.6,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.start,
                                                    children: const [
                                                      Text(
                                                        'Orange',
                                                        style: TextStyle(
                                                          color: Colors.yellow,
                                                          fontSize: 35,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                      ),
                                                      Text(
                                                        'Super Tasty',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 18,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Container(
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(5),
                                                      color: Colors.grey[700],
                                                    ),
                                                    height: 30,
                                                    width: 30,
                                                    child: IconButton(
                                                      padding:
                                                          const EdgeInsets.all(3),
                                                      onPressed: () {},
                                                      icon: const Icon(
                                                        Icons.favorite_outline,
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: height * 0.05,
                                              ),
                                              const Text(
                                                'Dolor et nostrud anim ex excepteur occaecat dolor.'
                                                ' In laboris laboris enim fugiat quis. Tempor incididunt'
                                                ' est in id ipsum est. Elit commodo laboris laboris fugiat.'
                                                ' In laboris laboris enim fugiat quis.',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 15,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: width - 18,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                color: Colors.grey[400],
                                              ),
                                              height: 30,
                                              width: 30,
                                              child: IconButton(
                                                padding: const EdgeInsets.all(2),
                                                onPressed: () {},
                                                icon: const Icon(
                                                  Icons.remove,
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: width * 0.01,
                                            ),
                                            const Text(
                                              '1',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 28,
                                              ),
                                            ),
                                            SizedBox(
                                              width: width * 0.01,
                                            ),
                                            Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                color: Colors.white,
                                              ),
                                              height: 30,
                                              width: 30,
                                              child: IconButton(
                                                padding: const EdgeInsets.all(2),
                                                onPressed: () {},
                                                icon: const Icon(
                                                  Icons.add,
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: width * 0.05,
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: const [
                                                Text(
                                                  '\$5.20',
                                                  style: TextStyle(
                                                      fontSize: 28,
                                                      color: Colors.white,
                                                      fontWeight: FontWeight.bold),
                                                ),
                                                Text(
                                                  'Total Price',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 17,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        ElevatedButton(
                                          style: ButtonStyle(
                                            shape: MaterialStatePropertyAll(
                                              RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(
                                                  15,
                                                ),
                                              ),
                                            ),
                                            padding: MaterialStateProperty.all(
                                              const EdgeInsets.symmetric(
                                                horizontal: 90,
                                                vertical: 12,
                                              ),
                                            ),
                                            backgroundColor:
                                                const MaterialStatePropertyAll(
                                              Colors.yellow,
                                            ),
                                          ),
                                          onPressed: () {},
                                          child: const Text(
                                            'Add to cart',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
