import 'package:flutter/material.dart';
import 'package:flutter_app_1/favourtie_account_card.dart';
import 'package:flutter_app_1/transfer_option_card.dart';

class SendMoneyPage extends StatelessWidget {
  const SendMoneyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(children: [
          Container(
            decoration: const BoxDecoration(
                color: Colors.blue,
                borderRadius:
                    BorderRadius.only(bottomLeft: Radius.circular(20))),
            height: 130,
          ),
          SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Text('Send Money',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.white),),
                    Spacer(),
                    IconButton(
            icon: const Icon(Icons.work_history_outlined,color: Colors.white,),
            onPressed: () {},
          ),
                  ],
                ),
                SizedBox(height: 40,),
                // Transfer options
                Column(
                  children: [
                    TransferOptionCard(
                      title: 'Same Bank',
                      subtitle:
                          'Transfer fund to other accounts within same bank',
                      icon: Icons.account_balance,
                    ),
                    const SizedBox(height: 10),
                    TransferOptionCard(
                      title: 'Other Bank',
                      subtitle:
                          'Transfer fund to other accounts in other banks',
                      icon: Icons.account_balance_wallet,
                    ),
                  ],
                ),

                const SizedBox(height: 20),

                // Favorite accounts section
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Favourite Accounts',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text('View All'),
                    ),
                  ],
                ),

                // Favorite account card
                FavoriteAccountCard(
                  accountName: 'Vision Securities Pvt.ltd',
                  accountDetails: 'Account Transfer . 08901010000056',
                  bankName: 'Global IME Bank Ltd.',
                  icon: Icons.person,
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
