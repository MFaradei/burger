import 'package:burger/drooo.dart';
import 'package:flutter/material.dart';

class Rooot extends StatefulWidget {
  const Rooot({Key? key}) : super(key: key);

  @override
  _RoootState createState() => _RoootState();
}

class _RoootState extends State<Rooot> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () => Navigator.pushNamed(context, '/red'),
            child: Text('Red/\nКрасный'),
            style: ElevatedButton.styleFrom(primary: Colors.red),
          ),
          ElevatedButton(
            onPressed: () => Navigator.pushNamed(context, '/yellow'),
            child: Text('Yellow/\nЖелтый'),
            style: ElevatedButton.styleFrom(primary: Colors.yellow),
          ),
          ElevatedButton(
            onPressed: () => Navigator.pushNamed(context, '/green'),
            child: Text('Green/\nЗеленый'),
            style: ElevatedButton.styleFrom(primary: Colors.green),
          )
        ],
      ),
      appBar: AppBar(
        title: Text('Светофорик'),
        actions: <Widget>[
          ElevatedButton(
            child: Text('Кнопка'),
            onPressed: () => ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text(
                    'Кнопка для того чтоб выполнить условие п.3 кейса 2.3'))),
          ),
          IconButton(
            icon: const Icon(Icons.navigate_next),
            tooltip: 'Go to the next page',
            onPressed: () => Navigator.pushNamed(context, '/red'),
          ),
        ],
      ),
      drawer: Drooo(),
      body: Center(
        child: Icon(Icons.ac_unit),
      ),
    );
  }
}
