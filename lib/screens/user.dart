//remove items
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_two/provider/provider_data.dart';

import 'package:provider_two/screens/admin.dart';

class UserPage extends StatelessWidget {
  const UserPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
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
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: const Icon(Icons.add),
                ),
                const Spacer(),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Consumer<DataProvider>(builder: (context, providerData, child) {
                  return Text(
                    providerData.x.toString(),
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  );
                }),
                Spacer(),
                Text('Total',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              ],
            ),
          ]),
        ),
      ),
    ));
  }
}
