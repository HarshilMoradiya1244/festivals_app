import 'package:festival_app/modal/festival_model.dart';
import 'package:flutter/material.dart';

import '../utils/global.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    Global.g1.festivalsList.map((e) {
      FestivalModel a1 =FestivalModel.fromMap(e);
      Global.g1.modalList.add(a1);
    },).toList();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
                  List<FestivalModel> l1 = [];
                  Global.g1.festivalList[index].name;
                  for (var x in Global.g1.modalList) {
                    if (x.name == Global.g1.festivalList[index].name) {
                      l1.add(x);
                    }
                  }
                  Navigator.pushNamed(context, 'festival', arguments: l1);
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
