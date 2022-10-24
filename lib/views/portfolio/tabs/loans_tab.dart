import 'package:flutter/material.dart';

class LoansTab extends StatelessWidget {
  const LoansTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          const SizedBox(height: 30),
          Row(
            children: [
              buildLoanCard(
                  name: 'Quard Hasan',
                  description: 'Apply for Benevolent loan or Msmes Loan'),
              const SizedBox(width: 20),
              buildLoanCard(
                  name: 'Mudarabah',
                  description: 'Apply for Msmes Loan to boost your Business')
            ],
          )
        ],
      ),
    );
  }

  Flexible buildLoanCard({
    required String name,
    required String description,
  }) {
    return Flexible(
      flex: 1,
      child: GestureDetector(
        child: Container(
          padding: const EdgeInsets.all(15),
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: Colors.grey, width: 2)),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Icon(
                  Icons.payments,
                  color: Colors.blue,
                ),
                Text(
                  name,
                  style: const TextStyle(
                      fontSize: 20,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            const SizedBox(height: 20),
            Text(
              description,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  color: Colors.blue, fontWeight: FontWeight.bold),
            )
          ]),
        ),
      ),
    );
  }
}
