import 'package:cleva_app/icons/cleva_icons.dart';
import 'package:flutter/material.dart';

class AddFundsPage extends StatelessWidget {
  const AddFundsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
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
            const SizedBox(width: 8),
            const Text(
              "Add USD",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(ClevaIcon.info, color: Colors.black),
          ),
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(17),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(10, 47, 0, 255),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: const Icon(
                          ClevaIcon.currencyExchange,
                          size: 18,
                          color: Color.fromARGB(255, 47, 0, 255),
                        ),
                      ),

                      const SizedBox(width: 12),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "From Conversion",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),

                          const Text(
                            "Convert from another currency into USD",
                            style: TextStyle(
                              fontSize: 10,
                              color: Color.fromRGBO(138, 138, 138, 1),
                            ),
                          ),

                          const SizedBox(height: 12),

                          Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 4,
                                  horizontal: 10,
                                ),
                                decoration: BoxDecoration(
                                  color: const Color.fromRGBO(244, 244, 244, 1),
                                  borderRadius: BorderRadius.circular(500),
                                ),
                                child: const Text(
                                  "Instant",
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ),

                              const SizedBox(width: 6),

                              Container(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 4,
                                  horizontal: 10,
                                ),
                                decoration: BoxDecoration(
                                  color: const Color.fromRGBO(244, 244, 244, 1),
                                  borderRadius: BorderRadius.circular(500),
                                ),
                                child: const Text(
                                  "Fee: 1%",
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),

                  const Icon(
                    ClevaIcon.arrowForward,
                    color: Color.fromRGBO(173, 173, 173, 1),
                    size: 13,
                  ),
                ],
              ),
            ),

            const SizedBox(height: 12),

            // From Stablecoins
            Container(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(17),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(10, 0, 168, 14),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: const Icon(
                          ClevaIcon.union,
                          size: 18,
                          color: Color.fromARGB(255, 0, 168, 14),
                        ),
                      ),

                      const SizedBox(width: 12),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "From Conversion",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),

                          const Text(
                            "Convert from another currency into USD",
                            style: TextStyle(
                              fontSize: 10,
                              color: Color.fromRGBO(138, 138, 138, 1),
                            ),
                          ),

                          const SizedBox(height: 12),

                          Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 4,
                                  horizontal: 10,
                                ),
                                decoration: BoxDecoration(
                                  color: const Color.fromRGBO(244, 244, 244, 1),
                                  borderRadius: BorderRadius.circular(500),
                                ),
                                child: const Text(
                                  "Arrives in 5-10 mins",
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ),

                              const SizedBox(width: 6),

                              Container(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 4,
                                  horizontal: 10,
                                ),
                                decoration: BoxDecoration(
                                  color: const Color.fromRGBO(244, 244, 244, 1),
                                  borderRadius: BorderRadius.circular(500),
                                ),
                                child: const Text(
                                  "Fee: 0.5% (min \$1)",
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),

                  const Icon(
                    ClevaIcon.arrowForward,
                    color: Color.fromRGBO(173, 173, 173, 1),
                    size: 13,
                  ),
                ],
              ),
            ),

            const SizedBox(height: 12),
            // By Bank Transfers
            Container(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(17),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(10, 153, 0, 107),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: const Icon(
                          ClevaIcon.bank,
                          size: 18,
                          color: Color.fromARGB(255, 153, 0, 107),
                        ),
                      ),

                      const SizedBox(width: 12),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "By Bank Transfer",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),

                          const SizedBox(
                            width: 250,
                            child: Text(
                              "From  banks & supported platforms (Paypal, Upwork, Payoneer & others)",
                              style: TextStyle(
                                fontSize: 10,
                                color: Color.fromRGBO(138, 138, 138, 1),
                              ),
                            ),
                          ),

                          const SizedBox(height: 12),

                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 4,
                                  horizontal: 10,
                                ),
                                decoration: BoxDecoration(
                                  color: const Color.fromRGBO(244, 244, 244, 1),
                                  borderRadius: BorderRadius.circular(500),
                                ),
                                child: const Text(
                                  "Arrives in 1-3 business days",
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ),

                              const SizedBox(height: 6),

                              Container(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 4,
                                  horizontal: 10,
                                ),
                                decoration: BoxDecoration(
                                  color: const Color.fromRGBO(244, 244, 244, 1),
                                  borderRadius: BorderRadius.circular(500),
                                ),
                                child: const Text(
                                  "Fee: Varies",
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),

                  const Icon(
                    ClevaIcon.arrowForward,
                    color: Color.fromRGBO(173, 173, 173, 1),
                    size: 13,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
