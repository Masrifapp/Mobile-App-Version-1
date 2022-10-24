import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:masrif/constants/constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.15,
          ),
          const Center(
            child: Text(
              'BALANCE',
              style: TextStyle(color: Colors.white54),
            ),
          ),
          const SizedBox(height: 20),
          const Center(
            child: Text(
              '#7,459.50',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30),
            ),
          ),
          const SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              buildCashCategory(name: 'CASH', amount: '#1,585'),
              buildCashCategory(name: 'INVEST', amount: '#972'),
              buildCashCategory(name: 'LOAN', amount: '#5,081'),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Expanded(
            child: Container(
                padding: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    )),
                child: SingleChildScrollView(
                    child: ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: ((context, index) {
                    return ListTile(
                      leading: const Icon(
                        Icons.currency_bitcoin,
                      ),
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text('HSBC'),
                              Text(
                                'Euro Account',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          const Text(
                            'E2,020',
                            style: TextStyle(),
                          ),
                          const Text(
                            '\$2,240',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    );
                  }),
                  separatorBuilder: (context, index) => const Divider(),
                  itemCount: 10,
                ))),
          ),
        ],
      ),
      floatingActionButton: SpeedDial(
        overlayOpacity: 0.3,
        backgroundColor: Colors.red,
        elevation: 10,
        animatedIcon: AnimatedIcons.menu_close,
        children: [
          SpeedDialChild(
            backgroundColor: Colors.green,
            child: const Icon(
              Icons.add,
              color: Colors.white,
            ),
            label: 'Make an Investment',
            labelStyle:
                const TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
          ),
          SpeedDialChild(
            backgroundColor: darkblue,
            child: const Icon(
              Icons.currency_pound,
              color: Colors.white,
            ),
            label: 'Take a Loan',
            labelStyle:
                const TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
          ),
          SpeedDialChild(
            backgroundColor: Colors.deepPurple,
            child: const Icon(
              Icons.payment,
              color: Colors.white,
            ),
            label: 'Make a Payment',
            labelStyle:
                const TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
          )
        ],
        child: const Icon(Icons.currency_exchange),
      ),
    );
  }

  Column buildCashCategory({required String name, required String amount}) {
    return Column(
      children: [
        Text(
          name,
          style: const TextStyle(color: Colors.white54),
        ),
        const SizedBox(height: 10),
        Text(
          amount,
          style: const TextStyle(
              color: Colors.white, fontWeight: FontWeight.w600, fontSize: 21),
        )
      ],
    );
  }
}
