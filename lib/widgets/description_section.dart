import 'package:flutter/material.dart';

class DescriptionSection extends StatelessWidget {
    const DescriptionSection({super.key});

    @override
    Widget build(BuildContext context) {
        return Padding(
            padding: EdgeInsets.only(top: 20),
            child: Column(
                children: [
                    Text(
                        "Lorem ipsum dolor sit amet consectetur adipisicing elit. Aperiam quis ab aspernatur eveniet ipsam non nam culpa doloribus dicta corrupti molestiae voluptas placeat est fugit sint, ipsum tempora natus laudantium reprehenderit harum officiis ullam dolor sapiente unde. Rerum ratione reprehenderit, vero porro libero mollitia reiciendis, repellat voluptatum ullam blanditiis pariatur.",
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black.withOpacity(0.7),
                        ),
                        textAlign: TextAlign.justify,
                    ),
                    SizedBox(height: 20),
                    Row(
                        children: [
                            Icon(
                                Icons.timer,
                                color: Color(0xFF674AEF),
                            ),
                            SizedBox(width: 5,),
                            Text(
                                "26 Hours",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                ),
                            ),
                        ],
                    ),
                    SizedBox(height: 20),
                    Row(
                        children: [
                            Icon(
                                Icons.start,
                                color: Colors.amber,
                            ),
                            SizedBox(width: 5,),
                            Text(
                                "26 Hours",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                ),
                            ),
                        ],
                    ),
                ],
            ),
        );
    }
}