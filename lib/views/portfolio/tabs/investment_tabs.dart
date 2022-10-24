import 'package:flutter/material.dart';

class InvestmentTab extends StatelessWidget {
  const InvestmentTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          const SizedBox(height: 20),
          TextField(
            decoration: InputDecoration(
                border: InputBorder.none,
                prefixIcon: const Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
                fillColor: Colors.grey.shade300,
                filled: true,
                hintText: 'Search...'),
          ),
          Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) {
                    return const InvestmentTile();
                  },
                  separatorBuilder: (context, index) =>
                      const Divider(color: Colors.grey),
                  itemCount: 5))
        ],
      ),
    );
  }
}

// investment tile: to be filled when data arrives
class InvestmentTile extends StatelessWidget {
  const InvestmentTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(
        Icons.window,
        color: Colors.orange,
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text(
            'Microsoft',
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
          ),
          Text(
            '\$134.33',
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
          ),
        ],
      ),
      subtitle: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IntrinsicHeight(
            child: Row(
              children: const [
                Icon(
                  Icons.timer,
                  size: 13,
                ),
                SizedBox(width: 2),
                Text('17:03:37'),
                SizedBox(width: 5),
                VerticalDivider(
                  color: Colors.grey,
                  width: 2,
                ),
                SizedBox(width: 3),
                Text(
                  'NASDAQ',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Row(
            children: const [
              Icon(
                Icons.arrow_drop_down,
                color: Colors.red,
              ),
              Text(
                '4.5(-20%)',
                style: TextStyle(color: Colors.red),
              )
            ],
          )
        ],
      ),
    );
  }
}
