import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        automaticallyImplyLeading: false,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Welcome To Alumate",
              style: TextStyle(color: Colors.white),
            ),
            Icon(
              Icons.more_vert_outlined,
              color: Colors.white,
            )
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Top part
          Container(
            padding: const EdgeInsets.only(left: 20, right: 20),
            height: 260,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xff000000),
                  Color(0xff737373),
                ],
                begin: Alignment.topRight,
                end: Alignment.bottomRight,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  "images/icon.png",
                  height: 185,
                  width: 145,
                ),
                const SizedBox(width: 10),
                Container(
                  padding: const EdgeInsets.only(top: 80),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "HIMALAYAN",
                        style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 28,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        "School of",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 24,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      Text(
                        "Science And Technology",
                        style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                    
                  ),
                )
              ],
              
            ),
          ),

        const SizedBox(
          height: 20,
         ),
         Container(
           height: 27,
           width: 102,
           padding: const EdgeInsets.only(left: 10),
           margin: const EdgeInsets.only(left: 10, right: 20),
           decoration:  BoxDecoration(
             color:const Color.fromARGB(255, 176, 175, 175), borderRadius: BorderRadius.circular(30)
           ),
           child: const Center(
             child: Text(
               "Community",
               style: TextStyle(
                 color: Colors.black,
                 fontSize: 16,
                 fontWeight: FontWeight.w500,
               ),
             ),
           ),
         ),
        const  SizedBox(
          height: 20,
         ),
         Row(
           children: [
             Container(
              margin: const  EdgeInsets.only(left: 5),
              padding:const  EdgeInsets.only(left: 20,right: 20),
              height: 97,
              width: 112,
              decoration:  BoxDecoration(
                border: Border.all(
              color: const Color.fromARGB(255, 240, 211, 115), // Border color
              width: 3.0,         // Border width
            ),
                color:   const Color.fromARGB(255, 205, 203, 203),borderRadius: BorderRadius.circular(20)
              ),
              child: Column(
                children: [
                  Center(child: Image.asset("images/student.png",height: 53,width: 58,color: Colors.amber[300],)),
                 const SizedBox(height: 5,),
                 const Text("Alumuni",style: TextStyle(color: Colors.black,fontSize: 20),)
                ],
              ),
             ),
             Container(
              margin: const  EdgeInsets.only(left: 5),
              padding:const  EdgeInsets.only(left: 20,right: 20),
              height: 97,
              width: 112,
              decoration:  BoxDecoration(
                border: Border.all(
              color: Colors.blue, // Border color
              width: 3.0,         // Border width
            ),
                color: const Color.fromARGB(255, 205, 203, 203),borderRadius: BorderRadius.circular(20)
              ),
              child: Column(
                children: [
                  Center(child: Image.asset("images/laptop.png",height: 53,width: 58,color: Colors.blue,)),
                 const SizedBox(height: 5,),
                 const Text("Post",style: TextStyle(color: Colors.black,fontSize: 20),)
                ],
              ),
             ),
             Container(
              margin: const  EdgeInsets.only(left: 5),
              padding:const  EdgeInsets.only(left: 20,right: 20),
              height: 97,
              width: 112,
              decoration:  BoxDecoration(
                 border: Border.all(
              color: Colors.green, // Border color
              width: 3.0,         // Border width
            ),

                color: const  Color(0xff8A8A8A),borderRadius: BorderRadius.circular(20)
              ),
              child: Column(
                children: [
                  Center(child: Image.asset("images/people.png",height: 53,width: 58, color: Colors.green,)),
                 const SizedBox(height: 5,),
                 const Text("Groups",style: TextStyle(color: Colors.black,fontSize: 20),)
                ],
              ),
             ),
           ], 
           
           ) ,
          const  SizedBox(height: 40,),
           Row(
             children: [
               Container(
                  margin: const  EdgeInsets.only(left: 5,),
                  padding:const  EdgeInsets.only(left: 20,right: 20,top: 5),
                  height: 97,
                  width: 112,
                  decoration:  BoxDecoration(
                     border: Border.all(
              color: const Color(0xFF9C27B0), // Border color
              width: 3.0,         // Border width
            ),
                    color: const  Color(0xff8A8A8A),borderRadius: BorderRadius.circular(20)
                  ),
                  child: Column(
                    children: [
                      Center(child: Image.asset("images/event.png",height: 53,width: 58, )),
                     const SizedBox(height: 5,),
                     const Text("Event",style: TextStyle(color: Colors.black,fontSize: 20),)
                    ],
                  ),
                  
                  
                 ),
                 Container(
              margin: const  EdgeInsets.only(left: 5),
              padding:const  EdgeInsets.only(left: 0,right:0 ,top: 5),
              height: 97,
              width: 112,
              decoration:  BoxDecoration(
                 border: Border.all(
             color: const Color.fromARGB(255, 244, 67, 54), // Border color
              width: 3.0,         // Border width
            ),
                color: const  Color(0xff8A8A8A),borderRadius: BorderRadius.circular(20)
              ),
              child: Column(
                children: [
                  Center(child: Image.asset("images/achivement.png",height: 53,width: 58, )),
                 const SizedBox(height: 2,),
                 const Text("Achivement",style: TextStyle(color: Colors.black,fontSize: 20),)
                ],
              ),
             ),
             Container(
              margin: const  EdgeInsets.only(left: 5),
              padding:const  EdgeInsets.only(left: 0,right: 0,top: 5),
              height: 97,
              width: 112,
              decoration:  BoxDecoration(
                 border: Border.all(
             color: const Color(0xff000000), // Border color
              width: 3.0,         // Border width
            ),
                color: const  Color(0xff8A8A8A),borderRadius: BorderRadius.circular(20)
              ),
              child: Column(
                children: [
                  Center(child: Image.asset("images/info.png",height: 53,width: 58,)),
                 const SizedBox(height: 5,),
                 const Text("About HSST",style: TextStyle(color: Colors.black,fontSize: 20),)
                ],
              ),
             ),
             ],
           ),
        ],
      ),
    );
  }
}
