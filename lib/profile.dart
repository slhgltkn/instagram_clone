import 'package:flutter/material.dart';
import 'package:flutter_linkify/flutter_linkify.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: NavBar(),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "salihgultekin",
          style: TextStyle(color: Colors.black),
        ),
        shadowColor: Colors.transparent,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.black87,
          ),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.more_horiz,
              color: Colors.black87,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: size.height * 0.02),
          ProfileInfo(),
          ProfileDetails(),
          SizedBox(height: size.height * 0.03),
          ProfileStory(),
          SizedBox(height: size.height * 0.02),
          DividerIcons(),
          SizedBox(height: size.height * 0.015),
          Grid(),
        ],
      ),
    );
  }
}

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.white,
      selectedItemColor: Colors.black87,
      unselectedItemColor: Colors.black38,
      currentIndex: 4,
      iconSize: 30,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.add_box_outlined), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.person_pin), label: '')
      ],
    );
  }
}

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        SizedBox(width: size.width * 0.05),
        CircleAvatar(
          backgroundColor: Colors.transparent,
          radius: 50,
          child: ClipOval(
            child: Image.network(
              'https://as2.ftcdn.net/v2/jpg/04/75/91/07/1000_F_475910747_2DEKcA8bCR4pURWOcqIW2vFAa1fquWcO.jpg',
              fit: BoxFit.cover,
              width: size.width * 1,
              height: size.height * 1,
            ),
          ),
        ),
        SizedBox(width: size.width * 0.1),
        Column(
          children: [
            Text(
              "150",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
            ),
            Text(
              "Gönderi",
              style: TextStyle(fontSize: 18),
            )
          ],
        ),
        SizedBox(width: size.width * 0.1),
        Column(
          children: [
            Text(
              "300",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
            ),
            Text(
              "Takipçi",
              style: TextStyle(fontSize: 18),
            )
          ],
        ),
        SizedBox(width: size.width * 0.1),
        Column(
          children: [
            Text(
              "100",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
            ),
            Text(
              "Takip",
              style: TextStyle(fontSize: 18),
            )
          ],
        ),
      ],
    );
  }
}

class ProfileDetails extends StatelessWidget {
  const ProfileDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: size.height * 0.02),
        Padding(
          padding: EdgeInsets.only(left: 25),
          child: Column(
            children: [
              Column(
                children: [
                  Text("Buraya Biyografi Yazılacak"),
                  SizedBox(height: size.height * 0.01),
                ],
              ),
              Column(
                children: [
                  Linkify(
                    onOpen: (link) {
                      print("Linkify link = ${link.url}");
                    },
                    text: "https://salihgultekin.com",
                    style: TextStyle(color: Colors.black),
                    linkStyle: TextStyle(color: Colors.blueAccent),
                    options: LinkifyOptions(humanize: false),
                  ),
                  SizedBox(height: size.height * 0.01),
                ],
              ),
              Column(
                children: [
                  Text(
                    "Diğer 15 kişi takip ediyor",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              )
            ],
          ),
        ),
        SizedBox(height: size.height * 0.02),
        Row(
          children: [
            Spacer(flex: 1),
            InkWell(
              child: Container(
                width: size.width * 0.22,
                height: size.height * 0.035,
                child: Text(
                  "Takip",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.black87),
                ),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.black26, width: size.width * 0.003),
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
              onTap: () {},
            ),
            Spacer(flex: 1),
            InkWell(
              child: Container(
                width: size.width * 0.22,
                height: size.height * 0.035,
                child: Text(
                  "Mesaj",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.black87),
                ),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.black26, width: size.width * 0.003),
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
              onTap: () {},
            ),
            Spacer(flex: 1),
            InkWell(
              child: Container(
                width: size.width * 0.22,
                height: size.height * 0.035,
                child: Text(
                  "İletişim",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.black87),
                ),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.black26, width: size.width * 0.003),
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
              onTap: () {},
            ),
            Spacer(flex: 1),
            InkWell(
              child: Container(
                width: size.width * 0.07,
                height: size.height * 0.035,
                alignment: Alignment.center,
                child: Icon(
                  Icons.keyboard_arrow_down_rounded,
                  size: 30,
                ),
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.black26, width: size.width * 0.003),
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
              onTap: () {},
            ),
            Spacer(flex: 1),
          ],
        ),
      ],
    );
  }
}

class ProfileStory extends StatelessWidget {
  const ProfileStory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Spacer(flex: 1),
        ProfileStoryUser(),
        Spacer(flex: 1),
        ProfileStoryUser(),
        Spacer(flex: 1),
        ProfileStoryUser(),
        Spacer(flex: 1),
        ProfileStoryUser(),
        Spacer(flex: 1),
        ProfileStoryUser(),
        Spacer(flex: 1),
      ],
    );
  }
}

class ProfileStoryUser extends StatelessWidget {
  const ProfileStoryUser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return CircleAvatar(
      backgroundColor: Colors.transparent,
      radius: 35,
      child: SizedBox(
        child: ClipOval(
          child: Image.network(
            'https://t4.ftcdn.net/jpg/02/67/40/21/360_F_267402109_jZvsqRQUvSxohAOmcUt549jlapqoRHM0.jpg',
            fit: BoxFit.cover,
            width: size.width * 1,
            height: size.height * 1,
          ),
        ),
      ),
    );
  }
}

class Grid extends StatelessWidget {
  const Grid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Row(
          children: [
            Container(
              height: size.height * 0.16,
              width: size.width * 0.3,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        'https://as2.ftcdn.net/v2/jpg/04/75/91/07/1000_F_475910747_2DEKcA8bCR4pURWOcqIW2vFAa1fquWcO.jpg'),
                    fit: BoxFit.cover),
              ),
            ),
            SizedBox(width: size.width * 0.015),
            Container(
              height: size.height * 0.16,
              width: size.width * 0.3,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        'https://as2.ftcdn.net/v2/jpg/04/75/91/07/1000_F_475910747_2DEKcA8bCR4pURWOcqIW2vFAa1fquWcO.jpg'),
                    fit: BoxFit.cover),
              ),
            ),
            SizedBox(width: size.width * 0.015),
            Container(
              height: size.height * 0.16,
              width: size.width * 0.3,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        'https://as2.ftcdn.net/v2/jpg/04/75/91/07/1000_F_475910747_2DEKcA8bCR4pURWOcqIW2vFAa1fquWcO.jpg'),
                    fit: BoxFit.cover),
              ),
            ),
          ],
        ),
        SizedBox(height: size.height * 0.007),
        Row(
          children: [
            Container(
              height: size.height * 0.16,
              width: size.width * 0.3,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        'https://as2.ftcdn.net/v2/jpg/04/75/91/07/1000_F_475910747_2DEKcA8bCR4pURWOcqIW2vFAa1fquWcO.jpg'),
                    fit: BoxFit.cover),
              ),
            ),
            SizedBox(width: size.width * 0.015),
            Container(
              height: size.height * 0.16,
              width: size.width * 0.3,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        'https://as2.ftcdn.net/v2/jpg/04/75/91/07/1000_F_475910747_2DEKcA8bCR4pURWOcqIW2vFAa1fquWcO.jpg'),
                    fit: BoxFit.cover),
              ),
            ),
            SizedBox(width: size.width * 0.015),
            Container(
              height: size.height * 0.16,
              width: size.width * 0.3,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        'https://as2.ftcdn.net/v2/jpg/04/75/91/07/1000_F_475910747_2DEKcA8bCR4pURWOcqIW2vFAa1fquWcO.jpg'),
                    fit: BoxFit.cover),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class DividerIcons extends StatelessWidget {
  const DividerIcons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Spacer(flex: 1),
        Icon(
          Icons.table_rows_outlined,
          size: 40,
        ),
        Spacer(flex: 3),
        Icon(
          Icons.person_pin_outlined,
          size: 40,
        ),
        Spacer(flex: 1),
      ],
    );
  }
}
