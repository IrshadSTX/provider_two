//remove items
import 'package:flutter/material.dart';
import 'package:provider_two/screens/user.dart';

class AdminPage extends StatelessWidget {
  const AdminPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              Icon(Icons.trolley),
              Text(
                'Shopping Cart',
                style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              Text(
                '0',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text('Total',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: Icon(Icons.remove),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const UserPage()));
                },
                child: Row(
                  children: const [
                    Text('remove items'),
                    Icon(Icons.skip_previous),
                  ],
                ),
              ),
            ],
          ),
        ]),
      ),
    ));
  }
}
