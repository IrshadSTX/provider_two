//remove items
import 'package:flutter/material.dart';

import 'package:provider_two/screens/admin.dart';

class UserPage extends StatelessWidget {
  const UserPage({super.key});

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
          const SizedBox(
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
                child: const Icon(Icons.add),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const AdminPage()));
                },
                child: Row(
                  children: const [
                    Text('Add Items'),
                    Icon(Icons.skip_next),
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
