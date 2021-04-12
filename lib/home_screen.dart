import 'package:audio_ui/play_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final image1='assets/trimmer.png';
    final image2='assets/trimmer_on.png';

    Color primaryColor = Color(0xffedd3cb);
    Color darkPrimaryColor = Color(0xff6f3d2e);

    return SafeArea(
      child: Scaffold(
        backgroundColor: primaryColor,
        drawer: Drawer(),
        appBar: AppBar(
          backgroundColor: primaryColor,
        ),
        body: Container(
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  color: primaryColor,
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: ()
                          {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>PlayScreen(imageUrl1: image1,imageUrl2: image2,)));
                          },
                          child: Container(
                            height: 150,
                            width: 150,
                            decoration: BoxDecoration(
                              color: primaryColor,
                              shape: BoxShape.rectangle,
                              boxShadow: [
                                BoxShadow(
                                    color: darkPrimaryColor.withOpacity(0.5),
                                    offset: Offset(5, 10),
                                    spreadRadius: 3,
                                    blurRadius: 10),
                                BoxShadow(
                                    color: Colors.white,
                                    offset: Offset(-1, -2),
                                    spreadRadius: -1,
                                    blurRadius: 20)
                              ],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image(
                                height: 140,
                                image: AssetImage(image1),

                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                            color: primaryColor,
                            shape: BoxShape.rectangle,
                            boxShadow: [
                              BoxShadow(
                                  color: darkPrimaryColor.withOpacity(0.5),
                                  offset: Offset(5, 10),
                                  spreadRadius: 3,
                                  blurRadius: 10),
                              BoxShadow(
                                  color: Colors.white,
                                  offset: Offset(-1, -2),
                                  spreadRadius: -1,
                                  blurRadius: 20)
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  color: primaryColor,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                          color: primaryColor,
                          shape: BoxShape.rectangle,
                          boxShadow: [
                            BoxShadow(
                                color: darkPrimaryColor.withOpacity(0.5),
                                offset: Offset(5, 10),
                                spreadRadius: 3,
                                blurRadius: 10),
                            BoxShadow(
                                color: Colors.white,
                                offset: Offset(-1, -2),
                                spreadRadius: -1,
                                blurRadius: 20)
                          ],
                        ),
                      ),

                      Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                          color: primaryColor,
                          shape: BoxShape.rectangle,
                          boxShadow: [
                            BoxShadow(
                                color: darkPrimaryColor.withOpacity(0.5),
                                offset: Offset(5, 10),
                                spreadRadius: 3,
                                blurRadius: 10),
                            BoxShadow(
                                color: Colors.white,
                                offset: Offset(-1, -2),
                                spreadRadius: -1,
                                blurRadius: 20)
                          ],
                        ),
                      ),

                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
