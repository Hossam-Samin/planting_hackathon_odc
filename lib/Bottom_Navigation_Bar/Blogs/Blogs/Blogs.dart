
import 'package:flutter/material.dart';
import 'Blogs_discrepion.dart';


class Blogs extends StatefulWidget {
  const Blogs({Key? key}) : super(key: key);

  @override
  State<Blogs> createState() => _BlogsState();
}

class _BlogsState extends State<Blogs> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        body: ListView(
          children: [
            Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  child: Row(

                    children:  [
                      IconButton(
                          onPressed: (){},
                          icon: const Icon(Icons.arrow_back_outlined,size: 25,)
                      ),
                     Container(
                       margin: const EdgeInsets.only(left: 120,),
                          child: const Text("Blogs",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,),)),


                    ],
                  ),
                ),

                Container(
                  margin: const EdgeInsets.only(top: 30),
              height: 110,
              width: 330,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.grey),
                  child: InkWell(
                    onTap: ()=> Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Description(),)),
                    child: Card(
                    child:  Row(
                         children: [
                           Expanded(
                          child: Image.asset("images/Rectangle 15.png"),
                             ),
                           Expanded(
                             child: Column(
                               children: const [
                                 Text("2 days ago",style: TextStyle(fontSize: 15,color: Colors.greenAccent),),
                                 SizedBox(height: 5,),
                                 Text("5 Tips to treat plants ",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                                 SizedBox(height: 5,),
                                 Text("leaf, in botany, any usually  ",style: TextStyle(fontSize: 10,color: Colors.grey),),
                                 SizedBox(height: 5,),
                                 Text("leaf, in botany, any usually   ",style: TextStyle(fontSize: 10,color: Colors.grey),),

                               ],
                             )
                           ),
                          ],
                         )
                      ),
                  )
                 ),
                 const SizedBox(height: 20,),
                Container(
                   // margin: const EdgeInsets.only(top: 60),
                    height: 110,
                    width: 330,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.grey),
                    child: InkWell(
                      onTap: ()=> Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Descripion2(),)),
                      child: Card(
                          child:  Row(
                            children: [
                              Expanded(
                                child: Image.asset("images/stephanie-harvey-vHkj3fX9wCk-unsplash 2.png"),
                              ),
                              Expanded(
                                  child: Column(
                                    children: const [
                                      Text("2 days ago",style: TextStyle(fontSize: 15,color: Colors.greenAccent),),
                                      SizedBox(height: 5,),
                                      Text("5 Tips to treat plants ",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                                      SizedBox(height: 5,),
                                      Text("leaf, in botany, any usually  ",style: TextStyle(fontSize: 10,color: Colors.grey),),
                                      SizedBox(height: 5,),
                                      Text("leaf, in botany, any usually   ",style: TextStyle(fontSize: 10,color: Colors.grey),),

                                    ],
                                  )
                              ),
                            ],
                          )
                      ),
                    )
                ),
                 const SizedBox(height: 20,),
                Container(
                    //margin: const EdgeInsets.all(50),
                    height: 110,
                    width: 330,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.grey),
                    child: InkWell(
                      onTap: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Description(),)),
                      child: Card(
                          child:  Row(
                            children: [
                              Expanded(
                                child: Image.asset("images/Rectangle 15.png"),
                              ),
                              Expanded(
                                  child: Column(
                                    children: const [
                                      Text("2 days ago",style: TextStyle(fontSize: 15,color: Colors.greenAccent),),
                                      SizedBox(height: 5,),
                                      Text("5 Tips to treat plants ",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                                      SizedBox(height: 5,),
                                      Text("leaf, in botany, any usually  ",style: TextStyle(fontSize: 10,color: Colors.grey),),
                                      SizedBox(height: 5,),
                                      Text("leaf, in botany, any usually   ",style: TextStyle(fontSize: 10,color: Colors.grey),),

                                    ],
                                  )
                              ),
                            ],
                          )
                      ),
                    )
                ),
                 const SizedBox(height: 20,),
                Container(
                  //margin: const EdgeInsets.all(50),
                    height: 110,
                    width: 330,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.grey),
                    child: InkWell(
                      onTap: ()=> Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Descripion3(),)),
                      child: Card(
                          child:  Row(
                            children: [
                              Expanded(
                                child: Image.asset("images/Mask group.png"),
                              ),
                              Expanded(
                                  child: Column(
                                    children: const [
                                      Text("2 days ago",style: TextStyle(fontSize: 15,color: Colors.greenAccent),),
                                      SizedBox(height: 5,),
                                      Text("5 Tips to treat plants ",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                                      SizedBox(height: 5,),
                                      Text("leaf, in botany, any usually  ",style: TextStyle(fontSize: 10,color: Colors.grey),),
                                      SizedBox(height: 5,),
                                      Text("leaf, in botany, any usually   ",style: TextStyle(fontSize: 10,color: Colors.grey),),

                                    ],
                                  )
                              ),
                            ],
                          )
                      ),
                    )
                ),
                 const SizedBox(height: 20,),
                Container(
                  // margin: const EdgeInsets.only(top: 60),
                    height: 110,
                    width: 330,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.grey),
                    child: InkWell(
                      onTap: ()=> Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Descripion2(),)),
                      child: Card(
                          child:  Row(
                            children: [
                              Expanded(
                                child: Image.asset("images/stephanie-harvey-vHkj3fX9wCk-unsplash 2.png"),
                              ),
                              Expanded(
                                  child: Column(
                                    children: const [
                                      Text("2 days ago",style: TextStyle(fontSize: 15,color: Colors.greenAccent),),
                                      SizedBox(height: 5,),
                                      Text("5 Tips to treat plants ",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                                      SizedBox(height: 5,),
                                      Text("leaf, in botany, any usually  ",style: TextStyle(fontSize: 10,color: Colors.grey),),
                                      SizedBox(height: 5,),
                                      Text("leaf, in botany, any usually   ",style: TextStyle(fontSize: 10,color: Colors.grey),),

                                    ],
                                  )
                              ),
                            ],
                          )
                      ),
                    )
                ),
               const SizedBox(height: 20,),
                Container(
                  //margin: const EdgeInsets.all(50),
                    height: 110,
                    width: 330,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.grey),
                    child: InkWell(
                      onTap: ()=> Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Descripion3(),)),
                      child: Card(
                          child:  Row(
                            children: [
                              Expanded(
                                child: Image.asset("images/Mask group.png"),
                              ),
                              Expanded(
                                  child: Column(
                                    children: const [
                                      Text("2 days ago",style: TextStyle(fontSize: 15,color: Colors.greenAccent),),
                                      SizedBox(height: 5,),
                                      Text("5 Tips to treat plants ",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                                      SizedBox(height: 5,),
                                      Text("leaf, in botany, any usually  ",style: TextStyle(fontSize: 10,color: Colors.grey),),
                                      SizedBox(height: 5,),
                                      Text("leaf, in botany, any usually   ",style: TextStyle(fontSize: 10,color: Colors.grey),),

                                    ],
                                  )
                              ),
                            ],
                          )
                      ),
                    )
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
