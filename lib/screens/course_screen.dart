import 'package:flutter/material.dart';
import 'package:flutter_ui/widgets/description_section.dart';
import 'package:flutter_ui/widgets/videos_section.dart';

class CourseScreen extends StatefulWidget {
    String img;
    CourseScreen(this.img);
    @override
    State<CourseScreen> createState() => _CourseScreenState();
}

class _CourseScreenState extends State<CourseScreen> {

    bool isVideosSection = true;
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                foregroundColor: Colors.black,
                backgroundColor: Colors.white,
                elevation: 0,
                centerTitle: false,
                // centerTitle: true,
                title: Text(
                    widget.img,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                    ),
                ),
                actions: [
                    Padding(
                        padding: EdgeInsets.only( right: 10),
                        child: Icon(
                            Icons.notifications,
                            size: 28,
                            color: Color(0xFF674AEF),
                        ),
                    ),
                ],
            ),
            body: Padding(
                padding: EdgeInsets.symmetric( vertical: 10, horizontal: 20 ),
                child: ListView(
                    children: [
                        Container(
                            padding: EdgeInsets.all(5),
                            width: MediaQuery.of(context).size.width,
                            height: 200,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Color(0xFFF5F3FF),
                                image: DecorationImage(
                                    image: AssetImage("images/${widget.img}.png"),
                                ),
                            ),
                            child: Center(
                                child: Container(
                                    padding: EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.circle,
                                    ),
                                    child: Icon(
                                        Icons.play_arrow_rounded,
                                        //  CupertinoIcons.play_circle,
                                        color: Color(0xFF674AEF),
                                        size: 48,
                                    ),
                                ),
                            ),
                        ),
                        SizedBox(height: 15),
                        Text(
                            "${widget.img} Complete Course",
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w600,
                            ),
                        ),
                        SizedBox(height: 5),
                        Text(
                            "Created by Dear Programmer",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.black.withOpacity(0.7),
                            ),
                        ),
                        SizedBox(height: 5),
                        Text(
                            "55 Videos",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.black.withOpacity(0.5),
                            ),
                        ),
                        SizedBox(height: 20),
                        Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 15,
                                horizontal: 10
                            ),
                            decoration: BoxDecoration(
                                color: Color(0xFFF5F3FF),
                                borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                    Material(
                                        /**
                                         * if Video section condition is true then that color will be on the button and if it is false then that color will show on the button but with opacity.
                                         * ika kondisi bagian Video bernilai true maka warna akan ada di tombol dan jika bernilai false maka warna itu akan ditampilkan di tombol tetapi dengan opacity.
                                         */
                                        color: isVideosSection ? Color(0xFF674AEF) : Color(0xFF674AEF).withOpacity(0.6),
                                        borderRadius: BorderRadius.circular(10),
                                        child: InkWell(
                                            onTap: () {
                                                // change value isVideosSection
                                                setState(() {
                                                    isVideosSection = true;
                                                });
                                            },
                                            child: Container(
                                                padding: EdgeInsets.symmetric(
                                                    vertical: 15,
                                                    horizontal: 35,
                                                ),
                                                child: Text(
                                                    "Videos",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 20,
                                                        fontWeight: FontWeight.w500,
                                                    ),
                                                ),
                                            ),
                                        ),
                                    ),
                                    Material(
                                        color: isVideosSection ? Color(0xFF674AEF).withOpacity(0.6) : Color(0xFF674AEF),
                                        borderRadius: BorderRadius.circular(10),
                                        child: InkWell(
                                            onTap: () {
                                                setState(() {
                                                    isVideosSection = false;
                                                });
                                            },
                                            child: Container(
                                                padding: EdgeInsets.symmetric(
                                                    vertical: 15,
                                                    horizontal: 35,
                                                ),
                                                child: Text(
                                                    "Description",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 20,
                                                        fontWeight: FontWeight.w500,
                                                    ),
                                                ),
                                            ),
                                        ),
                                    ),
                                ],
                            ),
                        ),

                        // we will create 2 different section for videos section and description section
                        SizedBox(height: 10),
                        // if isVideosSection condition is true then VidoesSection will be shown and if condition is false it means DescriptionSection will be shown.
                        isVideosSection ? VidoesSection() : DescriptionSection(),
                    ],
                ),
            ),
        );
    }
}