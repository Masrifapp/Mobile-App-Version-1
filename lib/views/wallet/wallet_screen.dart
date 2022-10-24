import 'package:flutter/material.dart';
import 'package:masrif/constants/constants.dart';

class WalletScreen extends StatefulWidget {
  const WalletScreen({Key? key}) : super(key: key);

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  var dropdownvalue = "USD";
  @override
  Widget build(BuildContext context) {
    var items = [
      "USD",
      "NGN",
      "BP",
      "YEN",
    ];
    return Scaffold(
        appBar: AppBar(
          title: const Text('Investment Market'),
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
            ),
            child: Column(children: [
              const Card(
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Icon(
                        Icons.search,
                        color: darkblue,
                      ),
                      hintText: 'Search...'),
                ),
              ),
              const Divider(),
              ListTile(
                trailing: DropdownButton(
                  value: dropdownvalue,
                  icon: const Icon(Icons.keyboard_arrow_down),
                  items: items
                      .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                      .toList(),
                  onChanged: (String? value) {
                    setState(() {
                      dropdownvalue = value!;
                    });
                  },
                ),
              ),
              const Divider(),
              ListView.separated(
                shrinkWrap: true,
                itemBuilder: ((context, index) {
                  return ListTile(
                    leading: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: const BoxDecoration(
                          color: Colors.orange, shape: BoxShape.circle),
                      child: const Icon(
                        Icons.currency_bitcoin,
                        color: Colors.white,
                      ),
                    ),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Euro Account',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Row(
                              children: const [
                                Text('BTC'),
                                SizedBox(width: 5),
                                Icon(
                                  Icons.arrow_drop_up,
                                  color: Colors.green,
                                ),
                                SizedBox(width: 5),
                                Text('4.55%'),
                              ],
                            )
                          ],
                        ),
                        const Text(
                          '\$2,240',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  );
                }),
                separatorBuilder: (context, index) => const Divider(
                  thickness: 1,
                ),
                itemCount: 5,
              )
            ]),
          ),
        ));
  }
}
