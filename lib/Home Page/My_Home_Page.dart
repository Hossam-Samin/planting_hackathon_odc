
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'Home_Plants_Page.dart';



class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {

bool _ishidenPassword = true;

  late TabController tapController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tapController = TabController(length: 2, vsync: this);
  }
  @override
  void dispose(){
    tapController.dispose();
    super.dispose();
  }

  // Dio
  Future<void> getData() async{
    try {
      var response = await Dio().post("https://lavie.orangedigitalcenteregypt.com/api/v1/auth/signup");
      print(response);
    } catch (e){
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home : Scaffold(
        body:
        SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
              children: [
              Container(
                height: 80,
              margin: const EdgeInsets.only(right: 0, top: 25, left: 320),
              child: Image.asset(
                "images/image 68 (Traced).png",

              ),
      ),
      const SizedBox(height: 20,),
      Row(
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
      ////////////////////////////////

      const SizedBox(height: 20),
                Container(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child:  DefaultTabController(
                    length: 2,
                    child: TabBar(
                        controller: tapController,
                        indicatorColor: Colors.green,
                        indicatorPadding: const EdgeInsets.only(
                          left: 50,
                          right: 50,
                        ),
                        indicatorWeight: 5,
                        tabs: const [
                          Text(
                            "Sign Up",
                            style: TextStyle(
                                fontFamily: " JF-Flat",
                                color: Colors.black54,
                                fontSize: 15),
                          ),
                          Text(
                            "Login",
                            style: TextStyle(color: Colors.black54, fontSize: 15),
                          ),
                        ]),
                  ),
                ),
              const SizedBox(height: 15,),

              // Tap Bar View
              SizedBox(
                height: MediaQuery.of(context).size.height,
                  child: TabBarView(
                      controller: tapController, children: [
                  //Sign Up
                  Column(
                    children: [
                      Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                       const SizedBox(height: 20,),
                            Flexible(
                              child: Container(
                                margin: const EdgeInsets.only(left: 15),
                                child: const TextField(
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                                    labelText: "First name",
                                    labelStyle: TextStyle(fontFamily: "JF-Flat", fontSize: 15),
                                    border: OutlineInputBorder(),
                                  ),
                                ),
                          ),
                            ),

                        
                          // const SizedBox(
                          //   height: 5,
                          // ),
                          const SizedBox(width: 15,height: 20,),

                          Flexible(
                            child: Container(
                                margin: const EdgeInsets.only(right: 15),
                                child: const TextField(
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                                    labelText: "Last name",
                                    labelStyle: TextStyle(fontFamily: "JF-Flat", fontSize: 15),
                                    border: OutlineInputBorder(),
                                  ),
                                ),
                              ),
                          ),
                         ],),
                      

                      const SizedBox(
                        height: 15,
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 20, right: 20),
                        child: const TextField(
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                            labelText: "Email",
                            labelStyle: TextStyle(fontFamily: "JF-Flat", fontSize: 15),
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 20, right: 20),
                        child: TextField(
                          obscureText: _ishidenPassword,
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                            labelText: "Password",
                            labelStyle: const TextStyle(fontFamily: "JF-Flat", fontSize: 15),
                            suffixIcon: IconButton(
                                onPressed: (){
                                  setState(() {
                                    _ishidenPassword = !_ishidenPassword;
                                  });
                                },
                                icon: Icon(_ishidenPassword ? Icons.visibility : Icons.visibility_off,
                                color: Colors.grey,
                                ),
                            ),
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 20, right: 20),
                        child:  TextField(
                          obscureText: _ishidenPassword,
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                            labelText: "Confirm Password",
                            labelStyle: const TextStyle(fontFamily: "JF-Flat", fontSize: 15),
                            suffixIcon: IconButton(
                              onPressed: (){
                                setState(() {
                                  _ishidenPassword = !_ishidenPassword;
                                });
                              },
                              icon: Icon(_ishidenPassword ? Icons.visibility : Icons.visibility_off,
                                color: Colors.grey,
                              ),
                            ),
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 20, right: 20),
                        child: Center(
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const HomePlantsPage(),
                              ));
                            },
                            style: ElevatedButton.styleFrom(
                                primary: Colors.green,
                                padding:
                                const EdgeInsets.only(left: 130, right: 130)),
                            child: const Text(
                              "Login",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: const [
                          Expanded(
                            child: Divider(
                              color: Colors.black45,
                              height: 10,
                              thickness: 1,
                              indent: 20,
                              endIndent: 30,
                            ),
                          ),
                          Text(
                            "or continue with",
                            style: TextStyle(fontSize: 15, fontFamily: "JF-Flat"),
                          ),
                          Expanded(
                            child: Divider(
                              color: Colors.black45,
                              height: 10,
                              thickness: 1,
                              indent: 30,
                              endIndent: 20,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(child: Image.asset("images/Google.png")),
                          const SizedBox(
                            width: 20,
                          ),
                          InkWell(child: Image.asset("images/Facebook.png")),

                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 0,bottom: 0,right: 300,top: 130),
                        child: Image.asset(
                          "images/image 68 (Traced) (1).png",

                        ),
                      ),
                    ],
                  ),


                    // Tap Bar Login
                    Column(
                      children: [
                          Container(
                            margin: const EdgeInsets.only(left: 20, right: 20),
                            child: const TextField(
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                                labelText: "Email",
                                labelStyle: TextStyle(fontFamily: "JF-Flat", fontSize: 15),
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 20, right: 20),
                            child:  TextField(
                              obscureText: _ishidenPassword,
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                                labelText: "Password",
                                labelStyle: const TextStyle(fontFamily: "JF-Flat", fontSize: 15),
                                suffixIcon: IconButton(
                                  onPressed: (){
                                    setState(() {
                                      _ishidenPassword = !_ishidenPassword;
                                    });
                                  },
                                  icon: Icon(_ishidenPassword ? Icons.visibility : Icons.visibility_off,
                                    color: Colors.grey,
                                  ),
                                ),
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 20, right: 20),
                          child: Center(
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const HomePlantsPage(),
                                ));
                              },
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.green,
                                  padding:
                                  const EdgeInsets.only(left: 130, right: 130)),
                              child: const Text(
                                "Login",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: const [
                            Expanded(
                              child: Divider(
                                color: Colors.black45,
                                height: 10,
                                thickness: 1,
                                indent: 20,
                                endIndent: 30,
                              ),
                            ),
                            Text(
                              "or continue with",
                              style: TextStyle(fontSize: 15, fontFamily: "JF-Flat"),
                            ),
                            Expanded(
                              child: Divider(
                                color: Colors.black45,
                                height: 10,
                                thickness: 1,
                                indent: 30,
                                endIndent: 20,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(child: Image.asset("images/Google.png")),
                            const SizedBox(
                              width: 20,
                            ),
                            InkWell(child: Image.asset("images/Facebook.png")),
                          ],
                        ),

                            Container(
                              margin: const EdgeInsets.only(left: 0,bottom: 0,right: 300,top: 260),
                                child: Image.asset(
                                  "images/image 68 (Traced) (1).png",

                                ),
                              ),
                           ],
                        ),
                      ],
                    )
                  )
              ]
          ),
        ),
      ),
  );
  }
}
