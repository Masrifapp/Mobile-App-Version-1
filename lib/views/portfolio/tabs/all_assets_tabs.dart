import 'package:flutter/material.dart';

class AllAssetsTab extends StatelessWidget {
  const AllAssetsTab({Key? key}) : super(key: key);

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
                    return const AssetTile();
                  },
                  separatorBuilder: (context, index) =>
                      const Divider(color: Colors.grey),
                  itemCount: 5))
        ],
      ),
    );
  }
}

class AssetTile extends StatelessWidget {
  const AssetTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(
        Icons.currency_bitcoin,
        color: Colors.amber,
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text(
            'BTC',
          ),
          Text(
            '\$2,240',
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
      subtitle: const Text(
        'Bitcoin Account',
        style: TextStyle(
            fontSize: 20, fontWeight: FontWeight.w600, color: Colors.black),
      ),
    );
  }
}
