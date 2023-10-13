import 'package:flutter/material.dart';

import '../utils/color_list.dart';
import '../utils/global.dart';

class FestivalEditScreen extends StatefulWidget {
  const FestivalEditScreen({super.key});

  @override
  State<FestivalEditScreen> createState() => _FestivalEditScreenState();
}

class _FestivalEditScreenState extends State<FestivalEditScreen> {
  TextEditingController txtText = TextEditingController();
  double _value = 15;
  int colorIndex = 0;
  int fontStyle = 0 , imageindex = 0;
  int fontColor = 1, image = 0;
  bool bold = false, bg = true;
  bool italic = false;
  bool font = false;
  bool imageIndex=false;
  Alignment txtAligh = Alignment.center;
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title:  const Text("Post Edit",style: TextStyle(color: Colors.white),),
          centerTitle: true,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back_outlined,color: Colors.white,)),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.share,color: Colors.white,)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.download,color: Colors.white,))
          ],
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: RepaintBoundary(
                    // key: globalKey,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.57,
                          width: MediaQuery.of(context).size.width,
                          color: colors[colorIndex],
                        ),
                        Image(
                          image: AssetImage("${Global.g1.festivalList[0]}"),
                          fit: BoxFit.cover,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.57,
                          width: MediaQuery.of(context).size.width,
                          alignment: txtAligh,
                          child: SelectableText(
                            "${txtText.text}",
                            style: TextStyle(
                              color:  colors[fontColor],
                              fontSize: _value,
                              fontFamily: fontList[fontStyle],
                              fontWeight:
                              bold ? FontWeight.bold : FontWeight.normal,
                              fontStyle:
                              italic ? FontStyle.italic : FontStyle.normal,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.28,
                  width: MediaQuery.of(context).size.width * 1,
                  color: Colors.grey,
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 9,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            IconButton(
                                onPressed: () {
                                  showDialog(
                                    context: context,
                                    builder: (context) {
                                      return AlertDialog(
                                        title: TextField(
                                          controller: txtText,
                                          decoration: const InputDecoration(
                                            hintText: "Enter Text",
                                            border: OutlineInputBorder(),
                                          ),
                                        ),
                                        actions: [
                                          ElevatedButton(
                                              onPressed: () {
                                                Navigator.pop(context);
                                                setState(() {});
                                              },
                                              child: const Text("OK")),
                                        ],
                                      );
                                    },
                                  );
                                },
                                icon: const Icon(Icons.text_fields)),
                            IconButton(
                                onPressed: () {
                                  setState(() {
                                    if (colorIndex < colors.length - 1) {
                                      colorIndex++;
                                    } else {
                                      colorIndex = 0;
                                    }
                                    bg=false;
                                  });
                                },
                                icon: const Icon(Icons.color_lens_outlined)),
                            IconButton(
                                onPressed: () {
                                  setState(() {
                                    bold = !bold;
                                  });
                                },
                                icon: const Icon(Icons.format_bold)),
                            IconButton(
                                onPressed: () {
                                  setState(() {
                                    italic = !italic;
                                  });
                                },
                                icon: const Icon(Icons.format_italic_outlined)),
                            IconButton(
                                onPressed: () {
                                  setState(() {
                                    if (fontColor < colors.length - 1) {
                                      fontColor++;
                                    } else {
                                      fontColor = 0;
                                    }
                                  });
                                },
                                icon: const Icon(Icons.format_paint_sharp)),
                            IconButton(
                                onPressed: () {
                                  setState(() {
                                    txtAligh = Alignment.centerLeft;
                                  });
                                },
                                icon: const Icon(Icons.format_align_left)),
                            IconButton(
                                onPressed: () {setState(() {
                                  txtAligh = Alignment.center;
                                });},
                                icon: const Icon(
                                    Icons.format_align_center_outlined)),
                            IconButton(
                                onPressed: () {
                                  setState(() {
                                    txtAligh = Alignment.centerRight;
                                  });
                                },
                                icon: const Icon(Icons.format_align_right)),
                            IconButton(
                                onPressed: () {
                                  setState(() {
                                    fontColor = 1;
                                    colorIndex = 0;
                                    bold = false;
                                    italic = false;
                                    fontStyle = 0;
                                    image = 0;
                                    txtAligh = Alignment.center;
                                    bg = false;
                                  });
                                },
                                icon: const Icon(Icons.restart_alt)),
                          ],
                        ),
                      ),
                      Slider(
                        value: _value,
                        activeColor: Colors.blue,
                        onChanged: (double s) {
                          setState(() {
                            _value = s;
                          });
                        },
                        divisions: 10,
                        min: 5,
                        max: 30,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.90,
                        height: 100,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: l1.length,
                          itemBuilder: (context, index) {
                            return Container(
                              margin: EdgeInsets.all(5),
                              height: 100,
                              width: 100,
                              color: Colors.white,
                              child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      imageIndex = true;
                                      imageindex = index;
                                    });
                                  },
                                  child: Image.asset(
                                    "${a1[index].image}",
                                    fit: BoxFit.cover,
                                  )),
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: SizedBox(
                          height: 36,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: fontList.length,
                            itemBuilder: (context, index) {
                              return InkWell(
                                onTap: () {
                                  setState(() {
                                    fontStyle = index;
                                  });
                                },
                                child: Text(
                                  "Hello   ",
                                  style: TextStyle(
                                      fontSize: 20, fontFamily: fontList[index]),
                                ),
                              );
                            },
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
