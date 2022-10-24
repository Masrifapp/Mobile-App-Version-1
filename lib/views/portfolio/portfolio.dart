import 'package:flutter/material.dart';
import 'package:masrif/shared/widgets/chart.dart';
import 'package:masrif/views/portfolio/tabs/all_assets_tabs.dart';
import 'package:masrif/views/portfolio/tabs/investment_tabs.dart';
import 'package:masrif/views/portfolio/tabs/loans_tab.dart';

class Portfolio extends StatefulWidget {
  const Portfolio({Key? key}) : super(key: key);

  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> with TickerProviderStateMixin {
  // tab controller
  late TabController tabController;
  double loans = 5081;
  double savings = 1585;
  double investments = 972;
  @override
  void initState() {
    tabController = TabController(initialIndex: 0, length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    const boldTextStyle = TextStyle(fontWeight: FontWeight.bold);
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Colors.white,
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * .35,
                width: double.infinity,
                child: Chart(
                  loans: loans,
                  savings: savings,
                  investments: investments,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '#$savings',
                    style: boldTextStyle,
                  ),
                  const SizedBox(width: 30),
                  Text(
                    '#$investments',
                    style: boldTextStyle,
                  ),
                  const SizedBox(width: 30),
                  Text(
                    '#$loans',
                    style: boldTextStyle,
                  ),
                ],
              ),
              const SizedBox(height: 20),
              TabBar(
                  controller: tabController,
                  unselectedLabelColor: Colors.black87,
                  labelStyle: const TextStyle(
                      fontSize: 17, fontWeight: FontWeight.w600),
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 7),
                  labelColor: Colors.blue,
                  tabs: const [
                    Text('All assets'),
                    Text('Investment'),
                    Text('Loans'),
                  ]),
              Expanded(
                  child: TabBarView(controller: tabController, children: const [
                AllAssetsTab(),
                InvestmentTab(),
                LoansTab(),
              ]))
            ],
          ),
        ),
      ),
    );
  }
}
