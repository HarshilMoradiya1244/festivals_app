import 'package:flutter/material.dart';

import '../utils/global.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "Festival ",
            style: TextStyle(fontSize: 20, color: Colors.black),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(6),
          child: GridView.builder(
            itemCount: Global.g1.festivalList.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, mainAxisExtent: 190),
            itemBuilder: (context, index) => InkWell(
                onTap: () {
                  Navigator.pushNamed(context, 'postEditScreen');
                },
                child: boxTile(index)),
          ),
        ),
      ),
    );
  }

  Column boxTile(int index) {
    return Column(
      children: [
        Container(
          height: 150,
          width: 240,
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              "${Global.g1.festivalList[index].image}",
              fit: BoxFit.cover,
            ),
          ),
        ),
        Text(
          "${Global.g1.festivalList[index].name}",
          style: const TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
        )
      ],
    );

  }
}
