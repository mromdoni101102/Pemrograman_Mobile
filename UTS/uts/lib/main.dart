import 'dart:async';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'LinkAja',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final PageController _pageController = PageController();
  int _currentPage = 0;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(seconds: 3), (Timer timer) {
      if (_currentPage < 2) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }
      _pageController.animateToPage(
        _currentPage,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeOut,
      );
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'LinkAja',
      home: Scaffold(
          appBar: AppBar(
            title: Image.asset(
              'assets/linkAja.png',
              fit: BoxFit.contain,
              width: 50,
            ),
            actions: [
              Image.asset(
                'assets/disc.png',
                fit: BoxFit.contain,
                width: 20,
              ),

              // menambahkan gambar slide

              //memberi jarak pada dua logo
              const SizedBox(width: 10),

              Image.asset(
                'assets/luv.jpg',
                fit: BoxFit.contain,
                width: 25,
              ),
            ],
          ),

          //body
          body: Column(
            children: [
              Container(
                height: 100,
                width: double.infinity,
                color: const Color.fromARGB(255, 243, 33, 33),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text(
                      'M. Rom doni',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),

                    //Box
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 35,
                          width: 90,
                          color: Colors.white,
                          child: const Text(
                            'Balance\n'
                            'Rp 10.184,50',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Container(
                          height: 30,
                          width: 100,
                          color: Colors.white,
                          child: const Text(
                            'Bonus Balance',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
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
              SizedBox(
                  height: 200.0,
                  width: double.infinity,
                  child: PageView(
                    controller: _pageController,
                    children: [
                      // Add your first image here
                      Image.asset('assets/images1.jpg'),

                      // Add your second image here
                      Image.asset('assets/images2.jpg'),

                      // Add your third image here
                      Image.asset('assets/images3.jpg'),
                    ],
                  ))
            ],
          ),
          bottomNavigationBar: BottomAppBar(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                IconButton(
                  icon: const Icon(Icons.home),
                  onPressed: () {
                    // Tambahkan logika ketika ikon "Home" ditekan.
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.history),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HistoryTabScreen()),
                    );
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.payment),
                  onPressed: () {
                    // Tambahkan logika ketika ikon "Pay" ditekan.
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.inbox),
                  onPressed: () {
                    // Tambahkan logika ketika ikon "Inbox" ditekan.
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.account_box),
                  onPressed: () {
                    // Tambahkan logika ketika ikon "Account" ditekan.
                  },
                ),
              ],
            ),
          )),
    );
  }
}

class HistoryTabScreen extends StatelessWidget {
  const HistoryTabScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        bottomNavigationBar: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                icon: const Icon(Icons.home),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const MyHomePage()),
                  );
                },
              ),
              IconButton(
                icon: const Icon(Icons.history),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HistoryTabScreen()),
                  );
                },
              ),
              IconButton(
                icon: const Icon(Icons.payment),
                onPressed: () {
                  // Tambahkan logika ketika ikon "Pay" ditekan.
                },
              ),
              IconButton(
                icon: const Icon(Icons.inbox),
                onPressed: () {
                  // Tambahkan logika ketika ikon "Inbox" ditekan.
                },
              ),
              IconButton(
                icon: const Icon(Icons.account_box),
                onPressed: () {
                  // Tambahkan logika ketika ikon "Account" ditekan.
                },
              ),
            ],
          ),
        ),
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          title: const Center(
            child: Text('Transaction History'),
          ),
          bottom: const TabBar(
            indicatorSize: TabBarIndicatorSize.tab,
            tabs: [
              Tab(
                text: 'Pending',
              ),
              Tab(
                text: 'Done',
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Center(
              child: Text('Pending Tab'),
            ),
            Center(
              child: Text('Done Tab'),
            ),
          ],
        ),
      ),
    );
  }
}
