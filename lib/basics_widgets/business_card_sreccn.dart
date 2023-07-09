import 'package:flutter/material.dart';

class BusinessCard extends StatelessWidget{
  const BusinessCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          backgroundColor: Colors.deepOrange,
          appBar:AppBar(
            centerTitle: true,
            title: const Text('Business card'),
            backgroundColor: Colors.grey,
            leading:const Icon(Icons.menu,size: 35,) ,
            actions: const [
              Icon(Icons.person),
              Icon(Icons.mail),
              Icon(Icons.phone),
            ],
            elevation:35 ,
          ) ,
            body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 50,),
                const Text('Data Heading 1',style: TextStyle(
                  fontWeight: FontWeight.bold,fontSize: 35
                ),),
                const SizedBox(
                  height: 35,
                ),
                const Text('Body : Desc'),
                const SizedBox(
                  height: 35,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //icons
                    Row(
                      children: [
                        Icon(Icons.star,size: 35,color: Colors.white,),
                        Icon(Icons.star),
                        Icon(Icons.star),
                        Icon(Icons.star),
                      ],
                    ),
                    //text
                    SizedBox(
                      width: 30,
                    ),
                    Text('Text')
                  ],
                ),
                const SizedBox(
                  height: 35,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Icon(Icons.start),
                        Text('1'),
                        Text('2'),
                      ],
                    ),
                    SizedBox(
                      width: 35,
                    ),
                    Column(
                      children: [
                        Icon(Icons.start),
                        Text('1'),
                        Text('2'),
                      ],
                    ),
                    SizedBox(
                      width: 35,
                    ),
                    Column(
                      children: [
                        Icon(Icons.start),
                        Text('1'),
                        Text('2'),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 55,
                ),
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      borderRadius: BorderRadius.circular(35)),
                  child: const Center(child: Text('Container')),
                ),
                SizedBox(
                  height: 250,
                  width: 250,
                  child: Image.asset('assets/images/22.jpg')),
                   const CircleAvatar(
                    radius: 55,
                    backgroundColor: Colors.deepOrange,
                    backgroundImage: AssetImage('assets/images/22.jpg'),
                  ),
                SizedBox(
                  height: 250,
                  width: 250,
                  child: Image.asset('assets/images/22.jpg')),
                   const CircleAvatar(
                    radius: 55,
                    backgroundColor: Colors.deepOrange,
                    backgroundImage: AssetImage('assets/images/22.jpg'),
                  ),
              ],
            ),
          ),
        ));
  }
}
