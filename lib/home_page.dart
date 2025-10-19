import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/mi.dart';

import 'package:cleva_app/icons/cleva_icons.dart';
import 'package:cleva_app/widgets/transactions_item.dart';
import "package:cleva_app/add_funds_page.dart";

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(400),
                      ),
                      child: Image.asset(
                        "assets/images/avatar_profile.png",
                        height: 40,
                        width: 40,
                      ),
                    ),

                    const SizedBox(width: 12),

                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Hi, Samuel",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const SizedBox(height: 4),
                              Container(
                                height: 21,
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 10,
                                  vertical: 4,
                                ),
                                decoration: BoxDecoration(
                                  color: const Color.fromARGB(22, 255, 189, 89),
                                  borderRadius: BorderRadius.circular(60),
                                ),
                                child: const Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(ClevaIcon.points, size: 14.75),

                                    SizedBox(width: 8),

                                    Text(
                                      "53 Points",
                                      style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),

                          Row(
                            children: [
                              IconButton(
                                onPressed: () {},
                                style: IconButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  fixedSize: const Size(46, 46),
                                ),
                                icon: const Iconify(Mi.notification),
                                iconSize: 26,
                              ),

                              const SizedBox(width: 8),

                              IconButton(
                                onPressed: () {},
                                style: IconButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  fixedSize: const Size(46, 46),
                                ),
                                icon: const Icon(ClevaIcon.customerServicLline),
                                iconSize: 22,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 26),
                // Account Balance
                Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 20,
                  ),

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                              vertical: 7,
                              horizontal: 12,
                            ),
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(26, 255, 255, 255),
                              border: BoxBorder.all(
                                width: 1,
                                color: Colors.white,
                              ),
                              borderRadius: BorderRadius.circular(40),
                            ),
                            child: Row(
                              children: [
                                Container(
                                  clipBehavior: Clip.hardEdge,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                  child: Image.asset(
                                    "assets/images/usd.png",
                                    height: 18,
                                    width: 18,
                                  ),
                                ),
                                const SizedBox(width: 6),
                                const Text(
                                  "USD Account",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(width: 6),
                                const Icon(
                                  ClevaIcon.arrowDown,
                                  size: 8,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ),

                          ElevatedButton.icon(
                            style: ElevatedButton.styleFrom(
                              elevation: 0,
                              padding: const EdgeInsets.symmetric(
                                horizontal: 12,
                              ),
                              backgroundColor: Theme.of(
                                context,
                              ).colorScheme.primary,
                            ),
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) {
                                    return const AddFundsPage();
                                  },
                                ),
                              );
                            },
                            label: const Text(
                              "Add Funds",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                                color: Colors.black,
                              ),
                            ),
                            icon: const Iconify(Mi.add, size: 20),
                          ),
                        ],
                      ),

                      const SizedBox(height: 31),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              const Text(
                                "\$3,000",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 32,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(width: 8),
                              IconButton(
                                onPressed: () {},
                                style: IconButton.styleFrom(
                                  backgroundColor: const Color.fromARGB(
                                    45,
                                    255,
                                    189,
                                    89,
                                  ),
                                ),
                                icon: const Icon(
                                  ClevaIcon.eye,
                                  color: Colors.white,
                                  size: 15,
                                ),
                              ),
                            ],
                          ),

                          Container(
                            padding: const EdgeInsets.symmetric(
                              vertical: 7,
                              horizontal: 12,
                            ),
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(26, 255, 255, 255),
                              border: BoxBorder.all(
                                width: 1,
                                color: Colors.white,
                              ),
                              borderRadius: BorderRadius.circular(40),
                            ),
                            child: const Row(
                              children: [
                                Text(
                                  "History",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(width: 6),
                                Icon(
                                  ClevaIcon.arrowForward,
                                  size: 8,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 12),

                Container(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadiusGeometry.circular(
                                  300,
                                ),
                              ),
                              fixedSize: const Size(80, 50),
                              elevation: 0,
                              backgroundColor: Theme.of(
                                context,
                              ).colorScheme.primary,
                            ),
                            onPressed: () {},
                            child: const Icon(
                              ClevaIcon.kite,
                              color: Colors.black,
                              size: 18,
                            ),
                          ),

                          const SizedBox(height: 9),

                          const Text(
                            "Transfer",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(width: 40),

                      Column(
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadiusGeometry.circular(
                                  300,
                                ),
                              ),
                              fixedSize: const Size(80, 50),
                              elevation: 0,
                              backgroundColor: Theme.of(
                                context,
                              ).colorScheme.primary,
                            ),
                            onPressed: () {},
                            child: const Icon(
                              ClevaIcon.currencyExchange,
                              color: Colors.black,
                              size: 18,
                            ),
                          ),

                          const SizedBox(height: 9),

                          const Text(
                            "Convert",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(width: 40),

                      Column(
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                  width: 1,
                                  color: Theme.of(context).colorScheme.primary,
                                ),
                                borderRadius: BorderRadiusGeometry.circular(
                                  300,
                                ),
                              ),
                              fixedSize: const Size(80, 50),
                              elevation: 0,
                              backgroundColor: Colors.white,
                            ),
                            onPressed: () {},
                            child: const Icon(
                              ClevaIcon.menu,
                              color: Colors.black,
                              size: 18,
                            ),
                          ),

                          const SizedBox(height: 9),

                          const Text(
                            "More",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 12),

                Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(8, 255, 189, 89),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: const EdgeInsets.symmetric(
                    vertical: 18,
                    horizontal: 16,
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Exchange rate",
                            style: TextStyle(fontSize: 13),
                          ),
                          TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              padding: const EdgeInsetsDirectional.symmetric(
                                horizontal: 10,
                                vertical: 6,
                              ),
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            child: const Text(
                              "All rates",
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 12),

                      const Row(
                        children: [
                          Icon(ClevaIcon.rate, size: 22),

                          SizedBox(width: 8),

                          Text(
                            "\$1 = NGN 2500",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 12),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Recent Transactions",
                      style: TextStyle(fontSize: 14),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "See all",
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                  ],
                ),

                // const SizedBox(height: 8),
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    List<Map<String, dynamic>> transactions = [
                      {
                        "accountName": "Mary Alabi",
                        "status": "Successfull",
                        "amount": 3000,
                        "datetime": "April 16th, 2025 7:40am",
                      },

                      {
                        "accountName": "Adekunle John",
                        "status": "Failed",
                        "amount": 3000,
                        "datetime": "April 16th, 2025 7:40am",
                      },

                      {
                        "accountName": "Peace Elo",
                        "status": "Successfull",
                        "amount": 3000,
                        "datetime": "April 16th, 2025 7:40am",
                      },

                      {
                        "accountName": "Emmanuel Pole",
                        "status": "Failed",
                        "amount": 3000,
                        "datetime": "April 16th, 2025 7:40am",
                      },
                    ];

                    final transaction = transactions[index];

                    return TransactionsItem(
                      accountName: transaction["accountName"],
                      status: transaction["status"],
                      amount: transaction["amount"],
                      datetime: transaction["datetime"],
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
