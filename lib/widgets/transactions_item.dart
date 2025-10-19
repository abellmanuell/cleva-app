import 'package:flutter/material.dart';
import 'package:cleva_app/icons/cleva_icons.dart';

class TransactionsItem extends StatelessWidget {
  final String accountName;
  final String status;
  final int amount;
  final String datetime;

  const TransactionsItem({
    super.key,
    required this.accountName,
    required this.status,
    required this.amount,
    required this.datetime,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(17),
                decoration: BoxDecoration(
                  color: status == "Successfull"
                      ? const Color.fromARGB(10, 0, 168, 14)
                      : const Color.fromARGB(10, 248, 0, 0),
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Icon(
                  status == "Successfull"
                      ? ClevaIcon.arrowDownward
                      : ClevaIcon.arrowUpward,
                  size: 13,
                  color: status == "Successfull"
                      ? const Color.fromARGB(255, 0, 168, 14)
                      : const Color.fromARGB(255, 248, 0, 0),
                ),
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Transfer from $accountName",
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    datetime,
                    style: const TextStyle(
                      fontSize: 12,
                      color: Color.fromRGBO(159, 159, 161, 1),
                    ),
                  ),
                ],
              ),
            ],
          ),

          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "+\$${amount.toString()}",
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 6),
                decoration: BoxDecoration(
                  color: status == "Successfull"
                      ? const Color.fromARGB(10, 0, 168, 14)
                      : const Color.fromARGB(10, 248, 0, 0),
                  borderRadius: BorderRadius.circular(3),
                ),
                child: Text(
                  status,
                  style: TextStyle(
                    fontSize: 10,
                    color: status == "Successfull"
                        ? const Color.fromARGB(255, 0, 168, 14)
                        : const Color.fromARGB(255, 248, 0, 0),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
