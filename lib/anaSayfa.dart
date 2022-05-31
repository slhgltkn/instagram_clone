import 'dart:html';
import 'package:flutter/material.dart';

class anaSayfa extends StatelessWidget {
  const anaSayfa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.black87,
        unselectedItemColor: Colors.black38,
        currentIndex: 0,
        iconSize: 30,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_pin),
            label: '',
          ),
        ],
      ),
      appBar: AppBar(
        titleSpacing: 10,
        title: UpBar(),
        shadowColor: Colors.transparent,
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: size.height * 0.02,
            ),
            Story(),
            SizedBox(
              height: size.height * 0.03,
            ),
            PostFull(),
          ],
        ),
      ),
    );
  }
}

class UpBar extends StatelessWidget {
  const UpBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.camera_alt_outlined,
              size: 35,
            ),
            color: Colors.black),
        Spacer(flex: 15),
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.tv,
              size: 35,
            ),
            color: Colors.black),
        Spacer(flex: 1),
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.send_rounded,
              size: 35,
            ),
            color: Colors.black)
      ],
    );
  }
}

class Story extends StatelessWidget {
  const Story({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Spacer(flex: 1),
        StoryUser(),
        Spacer(flex: 1),
        StoryUser(),
        Spacer(flex: 1),
        StoryUser(),
        Spacer(flex: 1),
        StoryUser(),
        Spacer(flex: 1),
        StoryUser(),
        Spacer(flex: 1),
      ],
    );
  }
}

class StoryUser extends StatelessWidget {
  const StoryUser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return CircleAvatar(
      radius: 39,
      backgroundColor: Color.fromARGB(255, 221, 77, 185),
      child: CircleAvatar(
        radius: 35,
        child: ClipOval(
          child: Image.network(
            'https://pbs.twimg.com/media/E1Fi_JgXMAILZqf.jpg',
            fit: BoxFit.cover,
            width: size.width * 1,
            height: size.height * 1,
          ),
        ),
      ),
    );
  }
}

class PostBody extends StatelessWidget {
  const PostBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.9,
      height: size.height * 0.5,
      child: ClipRect(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(5), // Image border
          child: SizedBox.fromSize(
            size: Size.fromRadius(10), // Image radius
            child: Image.network(
                'https://i.scdn.co/image/ab67616d0000b273dc3fa83c54c22ac56f069ab4',
                fit: BoxFit.cover),
          ),
        ),
      ),
    );
  }
}

class PostDown extends StatelessWidget {
  const PostDown({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.favorite_border,
            color: Colors.black87,
            size: 40,
          ),
        ),
        Spacer(flex: 1),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.message_outlined,
            color: Colors.black87,
            size: 40,
          ),
        ),
        Spacer(flex: 1),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.send_rounded,
            color: Colors.black87,
            size: 40,
          ),
        ),
        Spacer(flex: 15),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.save_outlined,
            color: Colors.black87,
            size: 40,
          ),
        ),
      ],
    );
  }
}

class PostFull extends StatelessWidget {
  const PostFull({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Expanded(
      child: Center(
        child: Container(
          width: size.width * 0.95,
          child: ListView(
            children: [
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://pbs.twimg.com/media/E1Fi_JgXMAILZqf.jpg'),
                ),
                title: Text(
                  'Salih Gültekin',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                subtitle: Text('İzmir, Türkiye'),
                trailing: Icon(Icons.more_horiz),
              ),
              Column(
                children: [
                  PostBody(),
                  Container(
                    width: size.width * 0.9,
                    child: PostDown(),
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  PostComment(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PostComment extends StatelessWidget {
  const PostComment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          width: size.width * 0.88,
          child: Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.transparent,
                radius: 10,
                child: SizedBox(
                  child: ClipOval(
                    child: Image.network(
                      'https://pbs.twimg.com/media/E1Fi_JgXMAILZqf.jpg',
                    ),
                  ),
                ),
              ),
              Spacer(flex: 1),
              Text(
                "Salih ve Diğer 150.000 Beğendi",
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              Spacer(flex: 25),
            ],
          ),
        ),
        SizedBox(
          height: size.height * 0.01,
        ),
        Container(
          width: size.width * 0.88,
          child: Row(
            children: [
              Text(
                "slhgltkn",
                style: TextStyle(fontWeight: FontWeight.w900),
              ),
              Spacer(flex: 1),
              Text(
                "Burası Açıklama Metnidir. #instagram #salih # keşfet",
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              Spacer(flex: 3),
            ],
          ),
        ),
      ],
    );
  }
}
