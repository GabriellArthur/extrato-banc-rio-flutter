import 'package:banking_app/utilities/themeStyles.dart';
import 'package:banking_app/widgets/transactionCard.dart';
import 'package:flutter/material.dart';

class RecentTransactions extends StatefulWidget {
  @override
  _RecentTransactionsState createState() => _RecentTransactionsState();
}

class _RecentTransactionsState extends State<RecentTransactions> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 12.0,
              right: 15.0,
              bottom: 16.0,
              top: 32.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Transações', style: ThemeStyles.primaryTitle),
              ],
            ),
          ),
          Flexible(
            flex: 1,
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              children: [
                TransactionCard(
                  color: Colors.red,
                  letter: '\$',
                  title: 'Netflix',
                  subTitle: 'Crédito de Cartão',
                  price: '- 20,30 R\$',
                ),
                TransactionCard(
                  color: Colors.red,
                  letter: '\$',
                  title: 'Amazon',
                  subTitle: 'Crédito de Cartão',
                  price: '- 15,00 R\$',
                ),
                TransactionCard(
                  color: Colors.red,
                  letter: '\$',
                  title: 'Mercado',
                  subTitle: 'Débito de Cartão',
                  price: '- 520,20 R\$',
                ),
                TransactionCard(
                  color: Colors.red,
                  letter: '\$',
                  title: 'Luz',
                  subTitle: 'Débito de Cartão',
                  price: '- 120,00 R\$',
                ),
                TransactionCard(
                  color: Colors.green,
                  letter: '\$',
                  title: 'Salário',
                  subTitle: 'Ted',
                  price: ' 3020,00 R\$',
                ),
                TransactionCard(
                  color: Colors.red,
                  letter: '\$',
                  title: 'Aluguel',
                  subTitle: 'Débito de Cartão',
                  price: '- 3020,00 R\$',
                ),
                TransactionCard(
                  color: Colors.green,
                  letter: '\$',
                  title: 'Salário',
                  subTitle: 'PIX',
                  price: ' 3020,00 R\$',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
