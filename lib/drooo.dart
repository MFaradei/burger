import 'package:burger/one_page.dart';
import 'package:flutter/material.dart';

class Drooo extends StatelessWidget {
  const Drooo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment(0, -1),
                  end: Alignment(0, 0),
                  colors: [Colors.red, Colors.yellow, Colors.green],
                ),
              ),
              child: Container(
                child: Image.network(
                    'https://i1.sndcdn.com/artworks-JuW7JQg2MiC76uG0-u8mqWA-t500x500.jpg'),
                height: 50,
              )),
          ListTile(
            leading: const Icon(
              Icons.ac_unit,
              color: Colors.red,
            ),
            title: Text('красная строка №1'),
            onTap: () {
              Navigator.pushNamed(context, '/red');
            },
          ),
          Divider(
            thickness: 2,
          ),
          ListTile(
            leading: const Icon(
              Icons.ac_unit,
              color: Colors.yellow,
            ),
            title: Text('Желтая строка №2'),
            onTap: () {
              Navigator.pushNamed(context, '/yellow');
            },
          ),
          Divider(
            thickness: 2,
          ),
          ListTile(
            leading: const Icon(
              Icons.ac_unit,
              color: Colors.green,
            ),
            title: Text('Зеленая строка №3'),
            onTap: () {
              Navigator.pushNamed(context, '/green');
            },
          )
        ],
      ),
    );
  }
}
