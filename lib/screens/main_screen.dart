import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {


    bool isLike = false;

    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        //AppBar
        appBar: AppBar(
          leading: const Icon(Icons.photo_camera_outlined, size: 32,),
          title: const Center(child: Text("Instagram", style: TextStyle(fontSize: 30, fontFamily: 'Helvetica'),)),
          actions: const [
          Padding(     
            padding: EdgeInsets.only(right: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.monitor_sharp, size: 32),
                Icon(Icons.telegram, size: 32)
              ],
            ),
          )
          ],
        ),
        body: Column(
          children: [
            // Story Part
            SingleChildScrollView(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(image: AssetImage('assets/images/bok.png'), fit: BoxFit.cover)
                        ),
                      ),
                      const Text("Bok"),
                    ],
                  ),
                  Column(
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(image: AssetImage('assets/images/cenkhoca.jpg'), fit: BoxFit.cover)
                      ),
                    ),
                    const Text("Cenk Hoca"),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(image: AssetImage('assets/images/gigachad.jpg'), fit: BoxFit.cover)
                      ),
                    ),
                   const Text("gigachad"),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(image: AssetImage('assets/images/KastamonuAyısı.jpg'), fit: BoxFit.cover)
                      ),
                    ),
                    const Text("Kastamonu Ayısı"),
                  ],
                ),
                ],
              ),
            ),
            // Post Profile Part
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Container(
                        height: 50,
                        width: 50,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(image: AssetImage('assets/images/KastamonuAyısı.jpg'), fit: BoxFit.cover)
                        ),
                      ),
                ),
                const Column(
                  children: [
                    Text("Kastamonu Ayısı", style: TextStyle(fontWeight: FontWeight.bold),),
                    Text('Çatalzeytin Kastamonu', style: TextStyle(fontSize: 10),),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(Icons.verified_rounded, size: 16, color: Colors.blue,),
                ),
                Spacer(),
                const Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: EdgeInsets.only(right: 8.0),
                    child: Icon(Icons.more_horiz_rounded),
                  ),
                )
              ],
            ),
            // Post Part
             GestureDetector(
              onDoubleTap: () {
                setState(() {
                  isLike = true;
                });
              },
               child: Container(
                height: deviceHeight / 2.5,
                width: deviceWidth,
                decoration: const BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/images/gormeyentaken.png'),
                  fit: BoxFit.cover
                  )
                ),
                           ),
             ),
            // Like Comment Part
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(onTap: () {
                      setState(() {
                        if(isLike == false) isLike = true;
                        
                      });
                    },
                    child: Icon(
                    isLike == false ? Icons.favorite_outline_rounded : Icons.favorite_outlined,size: 32, color: Colors.red,
                      ),
                    ),
                    Icon(Icons.comment,size: 32),
                    Icon(Icons.telegram,size: 32),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Icon(Icons.bookmark_border,size: 32),
                    ),
                  ],
                ),
              ),
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/cenkhoca.jpg'),
                    ),
                    Text("Cenk Hoca",style: TextStyle(fontWeight: FontWeight.bold),),
                    Text("tarafından beğenildi ve"),
                    Text("3.131 diğerleri", style: TextStyle(fontWeight: FontWeight.bold),)
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text("Kastamonu Ayısı",style: TextStyle(fontWeight: FontWeight.bold),),
                      ),
                      Expanded(child: Text("ŞaşıTaken morlar ülkesinde götten yememek için uğraşıyor",)),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.black,size: 32,),
            label: ''
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search,color: Colors.black,size: 32),
            label: ''
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box_outlined,color: Colors.black,size: 32),
            label: ''
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border,color: Colors.black,size: 32),
            label: ''
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined,color: Colors.black,size: 32),
            label: ''
          ),
        ],
  
      ),
      ),
    );
  }
}