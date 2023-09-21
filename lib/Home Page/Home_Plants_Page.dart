import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../Bottom_Navigation_Bar/Blogs/Blogs/Blogs.dart';
import '../Bottom_Navigation_Bar/Blogs/Blogs/qr_code_scanner.dart';
import '../State Management/STM_incr_decr.dart';
import '../pages/Cart.dart';

class HomePlantsPage extends StatefulWidget {
  const HomePlantsPage({Key? key}) : super(key: key);

  @override
  State<HomePlantsPage> createState() => _HomePlantsPageState();
}

class _HomePlantsPageState extends State<HomePlantsPage>
    with TickerProviderStateMixin {
  late TabController tapController;
  @override
  void initState() {
    super.initState();
    tapController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    tapController.dispose();
    super.dispose();
  }

////////////////////////////////
  int counter = 0;
  void increment() {
    counter++;
  }

  void decrement() {
    counter--;
  }

  int _currentIndex = 2;

  Widget build(BuildContext context) {
    var controller = Get.put(CounterController());
    var controller2 = Get.put(CounterController());
    var controller3 = Get.put(CounterController());
    var controller4 = Get.put(CounterController());

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView(
          children: [
            Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "La",
                        style: TextStyle(
                            fontFamily: "Great_Vibes",
                            fontSize: 35,
                            fontWeight: FontWeight.bold),
                      ),
                      Container(
                        padding: const EdgeInsets.only(
                          bottom: 30,
                        ),
                        child: Image.asset(
                          "images/Branding and Packaging.png",
                          height: 30,
                        ),
                      ),
                      const Text(
                        "Vie",
                        style: TextStyle(
                            fontFamily: "Great_Vibes",
                            fontSize: 35,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.only(left: 15, right: 20),
                        child: TextFormField(
                          decoration: InputDecoration(
                              hintText: "Search",
                              hintStyle: const TextStyle(
                                  fontFamily: "JF-Flat", fontSize: 20),
                              prefixIcon: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.search)),
                              contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 10),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                              )),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.green),
                      child: IconButton(
                        onPressed: () =>
                            Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const Cart(),
                        )),
                        icon: const Icon(
                          Icons.shopping_cart,
                          color: Colors.white,
                          size: 25,
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: const DefaultTabController(
                    length: 4,
                    child: TabBar(
                      // controller: tapController,
                      indicatorColor: Colors.green,
                      indicatorPadding: EdgeInsets.only(left: 20, right: 20),
                      tabs: [
                        Text(
                          "All",
                          style: TextStyle(
                              fontFamily: "JF-Flat",
                              fontSize: 20,
                              color: Colors.grey),
                        ),
                        Text(
                          "Plants",
                          style: TextStyle(
                              fontFamily: "JF-Flat",
                              fontSize: 20,
                              color: Colors.grey),
                        ),
                        Text(
                          "Seeds",
                          style: TextStyle(
                              fontFamily: "JF-Flat",
                              fontSize: 20,
                              color: Colors.grey),
                        ),
                        Text(
                          "Tools",
                          style: TextStyle(
                              fontFamily: "JF-Flat",
                              fontSize: 20,
                              color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child: TabBarView(controller: tapController, children: [
                    // All
                    GridView(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                      ),
                      children: [
                        Container(
                            margin: const EdgeInsets.all(10),
                            child: Card(
                              child: Column(
                                children: [
                                  Expanded(
                                    child: Container(
                                      margin: const EdgeInsets.only(
                                          top: 5, left: 10, right: 10),
                                      child: Row(
                                        children: [
                                          Expanded(
                                              child: Image.asset(
                                                  "images/plant1.png")),
                                          InkWell(
                                              onTap: () =>
                                                  controller.decrement(),
                                              child: const Text(
                                                "-",
                                                style: TextStyle(
                                                    fontSize: 25,
                                                    color: Colors.orange),
                                              )),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          Obx(
                                            () => Text(
                                              controller.counter.toString(),
                                              style: TextStyle(fontSize: 15),
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          InkWell(
                                            onTap: () => controller.increment(),
                                            child: const Text(
                                              "+",
                                              style: TextStyle(
                                                  fontSize: 25,
                                                  color: Colors.orange),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  const Text(
                                    "GARDENIA PLANT",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Container(
                                      padding: const EdgeInsets.only(
                                          left: 5, right: 80),
                                      child: const Text(
                                        "70 EGP",
                                        style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                        ),
                                      )),
                                  Container(
                                    height: 30,
                                    margin: const EdgeInsets.only(
                                        top: 10, left: 5, right: 5, bottom: 5),
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                          primary: Colors.green),
                                      child: const Text(
                                        "Add To Cart",
                                        style: TextStyle(fontSize: 20),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )),
                        Container(
                            margin: const EdgeInsets.all(20),
                            child: Card(
                              child: Column(
                                children: [
                                  Expanded(
                                    child: Container(
                                      margin: const EdgeInsets.only(
                                          top: 5, left: 10, right: 10),
                                      child: Row(
                                        children: [
                                          Expanded(
                                              child: Image.asset(
                                                  "images/plant2.png")),
                                          InkWell(
                                              onTap: () =>
                                                  controller2.decrement2(),
                                              child: const Text(
                                                "-",
                                                style: TextStyle(
                                                    fontSize: 25,
                                                    color: Colors.orange),
                                              )),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          Obx(
                                            () => Text(
                                              controller2.counter2.toString(),
                                              style: TextStyle(fontSize: 15),
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          InkWell(
                                            onTap: () =>
                                                controller2.increment2(),
                                            child: const Text(
                                              "+",
                                              style: TextStyle(
                                                  fontSize: 25,
                                                  color: Colors.orange),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  const Text(
                                    "GARDENIA PLANT",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Container(
                                      padding: const EdgeInsets.only(
                                          left: 5, right: 80),
                                      child: const Text(
                                        "70 EGP",
                                        style: TextStyle(
                                            fontWeight: FontWeight.normal),
                                      )),
                                  Container(
                                    height: 30,
                                    margin: const EdgeInsets.only(
                                        top: 10, left: 5, right: 5, bottom: 5),
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                          primary: Colors.green),
                                      child: const Text(
                                        "Add To Cart",
                                        style: TextStyle(fontSize: 20),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )),
                        Container(
                            margin: const EdgeInsets.all(20),
                            child: Card(
                              child: Column(
                                children: [
                                  Expanded(
                                    child: Container(
                                      margin: const EdgeInsets.only(
                                          top: 5, left: 10, right: 10),
                                      child: Row(
                                        children: [
                                          Expanded(
                                              child: Image.asset(
                                                  "images/plant3.png")),
                                          InkWell(
                                              onTap: () =>
                                                  controller3.decrement3(),
                                              child: const Text(
                                                "-",
                                                style: TextStyle(
                                                    fontSize: 25,
                                                    color: Colors.orange),
                                              )),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          Obx(
                                            () => Text(
                                              controller3.counter3.toString(),
                                              style: TextStyle(fontSize: 15),
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          InkWell(
                                            onTap: () =>
                                                controller3.increment3(),
                                            child: const Text(
                                              "+",
                                              style: TextStyle(
                                                  fontSize: 25,
                                                  color: Colors.orange),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  const Text(
                                    "GARDENIA PLANT",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Container(
                                      padding: const EdgeInsets.only(
                                          left: 5, right: 80),
                                      child: const Text(
                                        "190 EGP",
                                        style: TextStyle(
                                            fontWeight: FontWeight.normal),
                                      )),
                                  Container(
                                    height: 30,
                                    margin: const EdgeInsets.only(
                                        top: 10, left: 5, right: 5, bottom: 5),
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                          primary: Colors.green),
                                      child: const Text(
                                        "Add To Cart",
                                        style: TextStyle(fontSize: 20),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )),
                        Container(
                            margin: const EdgeInsets.all(20),
                            child: Card(
                              child: Column(
                                children: [
                                  Expanded(
                                    child: Container(
                                      margin: const EdgeInsets.only(
                                          top: 5, left: 10, right: 10),
                                      child: Row(
                                        children: [
                                          Expanded(
                                              child: Image.asset(
                                            "images/plant4.png",
                                            fit: BoxFit.contain,
                                          )),
                                          InkWell(
                                              onTap: () =>
                                                  controller4.decrement4(),
                                              child: const Text(
                                                "-",
                                                style: TextStyle(
                                                    fontSize: 25,
                                                    color: Colors.orange),
                                              )),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          Obx(
                                            () => Text(
                                              controller4.counter4.toString(),
                                              style: TextStyle(fontSize: 15),
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          InkWell(
                                            onTap: () =>
                                                controller4.increment4(),
                                            child: const Text(
                                              "+",
                                              style: TextStyle(
                                                  fontSize: 25,
                                                  color: Colors.orange),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  const Text(
                                    "GARDENIA PLANT",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Container(
                                      padding: const EdgeInsets.only(
                                          left: 5, right: 80),
                                      child: const Text(
                                        "70 EGP",
                                        style: TextStyle(
                                            fontWeight: FontWeight.normal),
                                      )),
                                  Container(
                                    height: 30,
                                    margin: const EdgeInsets.only(
                                        top: 10, left: 5, right: 5, bottom: 5),
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                          primary: Colors.green),
                                      child: const Text(
                                        "Add To Cart",
                                        style: TextStyle(fontSize: 20),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )),
                      ],
                    ),

                    // Plants
                    Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.all(100),
                          child: const Text(
                            "Plants",
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.grey,
                                fontFamily: "JF-Flat"),
                          ),
                        )
                      ],
                    ),
                    // Seeds
                    Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.all(100),
                          child: const Text(
                            "Seeds",
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.grey,
                                fontFamily: "JF-Flat"),
                          ),
                        )
                      ],
                    ),
                    // Tools
                    Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.all(100),
                          child: const Text(
                            "Tools",
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.grey,
                                fontFamily: "JF-Flat"),
                          ),
                        )
                      ],
                    ),
                  ]),
                )
              ],
            )
          ],
        ),
        bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Colors.white,
          index: _currentIndex,
          items: <Widget>[
            InkWell(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const Blogs(),
              )),
              child: Image.asset(
                "images/leave 1 (Traced).png",
                color: Colors.green,
              ),
            ),
            InkWell(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const QRCode(),
              )),
              child: Image.asset(
                "images/qr-code-scan 1 (Traced).png",
                color: Colors.green,
              ),
            ),
            InkWell(
              onTap: () {},
              child: Image.asset(
                "images/Rectangle 74.png",
                color: Colors.green,
              ),
            ),
            InkWell(
              onTap: () {},
              child: Image.asset(
                "images/Group 2120.png",
                color: Colors.green,
              ),
            ),
            InkWell(
              onTap: () {},
              child: Image.asset(
                "images/Group.png",
                color: Colors.green,
              ),
            ),
          ],
          onTap: (index) {},
        ),
      ),
    );
  }
}
