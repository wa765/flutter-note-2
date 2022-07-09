import 'package:flutter/material.dart';

class CostumCardGradient extends StatelessWidget {
  const CostumCardGradient({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF8C062F),
        title: const Text(
          'Costum Card Example',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
                Color(0xFFFE5788),
                Color(0xFFF56D5D),
              ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
            ),
          ),
          Center(
            child: SizedBox(
              // berukuran 80% dari lebar layar device
              width: MediaQuery.of(context).size.width * 0.8,
              // berukuran 70% dari lebar layar device
              height: MediaQuery.of(context).size.height * 0.7,
              child: Card(
                // Elevation sama seperti efek box shadow
                elevation: 10,
                child: Stack(
                  children: [
                    Opacity(
                      opacity: 0.7,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          image: const DecorationImage(
                              image: NetworkImage(
                                'https://img.freepik.com/free-vector/wave-textures-white-background-vector_53876-60286.jpg?w=2000',
                              ),
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                    Container(
                      // tinggi card berukuran setengah dari tinggi card (70%) / 2 = 35%
                      height: MediaQuery.of(context).size.height * 0.35,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(4),
                          topRight: Radius.circular(4),
                        ),
                        image: DecorationImage(
                          image: NetworkImage(
                            'https://cdn.pixabay.com/photo/2018/01/20/08/33/sunset-3094078_960_720.jpg',
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(
                        20,
                        // untuk margin top nya = ukuran dari setengah card tadi yaiut 0.35 dan ditambah dengan 50px
                        50 + MediaQuery.of(context).size.height * 0.35,
                        20,
                        20,
                      ),
                      child: Center(
                        child: Column(
                          children: [
                            const Text(
                              'Beautifull Sunset at Paddy Field',
                              maxLines: 2,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFFF56D5D),
                                fontSize: 25,
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.fromLTRB(0, 20, 0, 15),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Text(
                                    'Posted on',
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.grey),
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    'Posted on',
                                    style: TextStyle(
                                        fontSize: 12, color: Color(0xFFF56D5D)),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              children: const [
                                Spacer(
                                  flex: 10,
                                ),
                                Icon(
                                  Icons.thumb_up,
                                  size: 18,
                                  color: Colors.grey,
                                ),
                                Spacer(
                                  flex: 1,
                                ),
                                Text(
                                  '99',
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                                Spacer(
                                  flex: 5,
                                ),
                                // Icon
                                Icon(
                                  Icons.comment,
                                  size: 18,
                                  color: Colors.grey,
                                ),
                                Spacer(
                                  flex: 1,
                                ),
                                Text(
                                  '88',
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                                Spacer(
                                  flex: 10,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
