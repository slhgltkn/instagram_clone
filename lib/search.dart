import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: NavBar(),
      body: Column(
        children: [
          SizedBox(height: size.height * 0.02),
          SearchBar(),
          SizedBox(height: size.height * 0.01),
          ListCard(),
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
      /*currentIndex: seciliSayfa,
      onTap: sayfaDegistir,
      */
      currentIndex: 1,
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.white,
      selectedItemColor: Colors.black87,
      unselectedItemColor: Colors.black38,
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

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Center(
      child: Container(
        width: size.width * 0.90,
        height: size.height * 0.06,
        child: Text(
          "Ara",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 18, color: Colors.black54),
        ),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color.fromARGB(31, 124, 124, 124),
        ),
      ),
    );
  }
}

class ListCard extends StatelessWidget {
  const ListCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        SizedBox(width: size.width * 0.05),
        ListCardIGTV(),
        SizedBox(width: size.width * 0.015),
        ListCardShop(),
        SizedBox(width: size.width * 0.015),
        ListCardFood(),
        SizedBox(width: size.width * 0.015),
        ListCardArt(),
        SizedBox(width: size.width * 0.015),
        ListCardTravel(),
      ],
    );
  }
}

class ListCardIGTV extends StatelessWidget {
  const ListCardIGTV({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.2,
      height: size.height * 0.047,
      child: Row(
        children: [
          Spacer(flex: 2),
          Icon(
            Icons.tv,
            size: 22,
          ),
          Spacer(flex: 1),
          Text(
            "IGTV",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          Spacer(flex: 2),
        ],
      ),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black26, width: size.width * 0.003),
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}

class ListCardShop extends StatelessWidget {
  const ListCardShop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.23,
      height: size.height * 0.047,
      child: Row(
        children: [
          Spacer(flex: 2),
          Icon(
            Icons.shopping_bag_outlined,
            size: 22,
          ),
          Spacer(flex: 1),
          Text(
            "Mağaza",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
          ),
          Spacer(flex: 2),
        ],
      ),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black26, width: size.width * 0.003),
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}

class ListCardFood extends StatelessWidget {
  const ListCardFood({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.16,
      height: size.height * 0.047,
      child: Row(
        children: [
          Spacer(flex: 1),
          Text(
            "Yemek",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
          ),
          Spacer(flex: 1),
        ],
      ),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black26, width: size.width * 0.003),
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}

class ListCardArt extends StatelessWidget {
  const ListCardArt({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.15,
      height: size.height * 0.047,
      child: Row(
        children: [
          Spacer(flex: 1),
          Text(
            "Sanat",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
          ),
          Spacer(flex: 1),
        ],
      ),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black26, width: size.width * 0.003),
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}

class ListCardTravel extends StatelessWidget {
  const ListCardTravel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.14,
      height: size.height * 0.047,
      child: Row(
        children: [
          Spacer(flex: 1),
          Text(
            "Gezi",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
          ),
          Spacer(flex: 1),
        ],
      ),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black26, width: size.width * 0.003),
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
