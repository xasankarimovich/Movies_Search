import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DownloadPage extends StatelessWidget {
  const DownloadPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenW = MediaQuery.of(context).size.width - 40.0;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Download",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "List Movie",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                ),
              ),
              Text(
                "Downloading",
                style: TextStyle(
                  fontSize: 18,
                  color: Color(0xff5a4bed),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Stack(
              children: [
                const Divider(
                  thickness: 0.5,
                ),
                Padding(
                  padding: EdgeInsets.only(left: screenW * 0.5),
                  child: const Divider(
                    thickness: 2,
                    color: Color(0xff5a4bed),
                  ),
                ),
              ],
            ),
          ),
          MyDownloadingSection(
            screenW: screenW,
            image: "images/captian.png",
            title: "Captian aperica: The First Avanger (2011)",
            logoImg: "images/marvel.png",
          ),
          MyDownloadingSection(
            screenW: screenW,
            image: "images/disney.png",
            title: "Disney's Aladdin (2019)",
            logoImg: "images/disneylogo.png",
          ),
        ],
      ),
    );
  }
}

class MyDownloadingSection extends StatelessWidget {
  MyDownloadingSection({
    super.key,
    required this.screenW,
    required this.image,
    required this.title,
    required this.logoImg,
  });
  double screenW;
  String image;
  String title;
  String logoImg;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Container(
            height: 150,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 41, 40, 43),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(image),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: const TextStyle(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Expanded(
                          child: Image.asset(
                            logoImg,
                            width: 70,
                            height: 70,
                          ),
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                  Stack(
                                    children: [
                                      const Divider(
                                        thickness: 3,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          right: screenW * 0.1,
                                        ),
                                        child: const Divider(
                                          thickness: 3,
                                          color: Color(0xff5a4bed),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      RichText(
                                        text: const TextSpan(
                                          text: "720K/s",
                                          style: TextStyle(
                                            fontSize: 10,
                                            color: Color(0xff5a4bed),
                                          ),
                                        ),
                                      ),
                                      RichText(
                                        text: const TextSpan(
                                          children: [
                                            TextSpan(
                                              text: "250MB/",
                                              style: TextStyle(
                                                fontSize: 10,
                                                color: Colors.grey,
                                              ),
                                            ),
                                            TextSpan(
                                              text: "1.2GB",
                                              style: TextStyle(fontSize: 10),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(width: 10),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.pause_circle_outline),
                              color: Colors.grey,
                            ),
                            PopupMenuButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              itemBuilder: (BuildContext context) {
                                return [
                                  const PopupMenuItem(
                                    padding:
                                    EdgeInsets.symmetric(horizontal: 20),
                                    value: 1,
                                    child: Text('Re Download'),
                                  ),
                                  const PopupMenuItem(
                                    padding:
                                    EdgeInsets.symmetric(horizontal: 20),
                                    value: 2,
                                    child: Text('Details'),
                                  ),
                                  const PopupMenuItem(
                                    padding:
                                    EdgeInsets.symmetric(horizontal: 20),
                                    value: 3,
                                    child: Text("Delete"),
                                  ),
                                ];
                              },
                              onSelected: (value) {
                                print('Selected: $value');
                              },
                              offset: const Offset(0, 50),
                              child: const Icon(
                                CupertinoIcons.ellipsis_vertical,
                                size: 20,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}