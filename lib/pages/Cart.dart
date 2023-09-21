
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 10,top: 30),
              child: const Text("My Cart",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              
            ),
           const SizedBox(height: 200,),
            
            Center(
              child: SvgPicture.asset("images/undraw_No_data_re_kwbl.svg",height: 200,),
            ),
           const SizedBox(height: 10,),
           const Center(
              child:  Text("Your cart is empty",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ),
            const SizedBox(height: 15,),

           const Center(
              child: Text("Sorry, the keyword you entered cannot be found, please check again or search with another keyword.",
              style: TextStyle(fontSize: 15,color: Colors.grey),
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }
}
