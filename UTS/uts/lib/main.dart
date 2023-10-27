import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LinkAja',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('LinkAja'),
        ),
        body: Column(
          children: [
            Container(
              height: 100,
              width: double.infinity,
              color: const Color.fromARGB(255, 243, 33, 33),
              child: const Center(
                child: Text(
                  'Rp 10.184,90',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Icon(Icons.add),
                    Text('TopUp'),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.send),
                    Text('Send Money'),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.airplane_ticket),
                    Text('Ticket Code'),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.more_horiz),
                    Text('See All'),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Icon(Icons.phone),
                    Text('Pulsa/Data'),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.bolt),
                    Text('Electricity'),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.medical_services),
                    Text('BPJS'),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.games),
                    Text('mgames'),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Icon(Icons.tv),
                    Text('Cable TV & Internet'),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.water_drop),
                    Text('PDAM'),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.credit_card),
                    Text('Kartu Uang Elektronik'),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.more_horiz),
                    Text('More'),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
