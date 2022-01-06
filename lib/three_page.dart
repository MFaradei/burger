import 'package:burger/drooo.dart';
import 'package:flutter/material.dart';

class ThreePages extends StatelessWidget {
  const ThreePages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          ElevatedButton(
            child: Text('Кнопка'),
            onPressed: () => ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                    action: SnackBarAction(
                      label: 'Тыц',
                      onPressed: () => Navigator.pushNamed(context, '/'),
                    ),
                    content: Text(
                        'Кнопка для того чтоб выполнить условие п.3 кейса 2.3'))),
          ),
          IconButton(
            icon: const Icon(Icons.navigate_next),
            tooltip: 'Go to the next page',
            onPressed: () => Navigator.pushNamed(context, '/'),
          ),
        ],
      ),
      drawer: const Drooo(),
      body: Container(
        color: Colors.green,
        child: Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Предыдущий экран'),
          ),
        ),
      ),
    );
  }
}
