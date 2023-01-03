import 'package:flutter/material.dart';

class GroupMemeberScreen extends StatelessWidget {
  const GroupMemeberScreen({Key? key}) : super(key: key);

  static const List<Map<String, String>> groupMembers = [
    {
      "name": "Meet Patel",
      "roll": "AU2040010",
      "image": "assets/meet.HEIC",
    },
    {
      "name": "Aastha Gaudani",
      "roll": "AU2040032",
      "image": "assets/aastha.jpg",
    },
    {
      "name": "Dev Patel",
      "roll": "AU2040056",
      "image": "assets/dev.jpg",
    },
    {
      "name": "Manav Shah",
      "roll": "AU2040088",
      "image": "assets/manav.png",
    },
    {
      "name": "Maulik Ranadive",
      "roll": "AU2040117",
      "image": "assets/maulik.jpg",
    },
    {
      "name": "Aditi Vasa",
      "roll": "AU2040122",
      "image": "assets/aditi.jpg",
    },
    {
      "name": "Devyash Shah",
      "roll": "AU2040152",
      "image": "assets/devyash.jpg",
    },
    {
      "name": "Kathan Bhavsar",
      "roll": "AU2040170",
      "image": "assets/kathan.jpg",
    },
    {
      "name": "Vandan Shah",
      "roll": "AU2040196",
      "image": "assets/vandan.jpg",
    },
    {
      "name": "Pratham Lalwani",
      "roll": "AU2040260",
      "image": "assets/pratham.HEIC",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF151515),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40.0),
        child: Column(
          children: [
            SizedBox(height: 85),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                      size: 25,
                    )),
                //SizedBox(width: 30),
                Text(
                  "MASC-213",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                    fontSize: 30,
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            Divider(
              color: Color(0xFF838383),
            ),
            SizedBox(height: 30),
            Row(
              children: [
                Text(
                  "Group members",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                    fontSize: 25,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Text(
              "Here is a list of group members who participated in the project of MASC-213",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w300,
                fontSize: 18,
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    //crossAxisSpacing: 0,
                    mainAxisSpacing: 70,
                  ),
                  itemCount: groupMembers.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: [
                        groupMembers[index]['image'] == "assets/"
                            ? CircleAvatar(
                                radius: 80,
                                backgroundColor: Colors.grey,
                              )
                            : CircleAvatar(
                                radius: 80,
                                backgroundImage: AssetImage(groupMembers[index]
                                        ['image'] ??
                                    "assets/maulik.jpg"),
                              ),
                        SizedBox(height: 10),
                        Text(
                          groupMembers[index]['name'] ?? "member",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          groupMembers[index]['roll'] ?? "member",
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.7),
                            fontWeight: FontWeight.w300,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
