import 'package:flutter/material.dart';

class POSViewCalculation extends StatefulWidget {
  const POSViewCalculation({super.key});

  @override
  State<POSViewCalculation> createState() => _POSViewCalculationState();
}

class _POSViewCalculationState extends State<POSViewCalculation> {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: InvoiceDetails(
        subtotal: 200,
        tax: 200,
      ),
    );
  }
}

class InvoiceDetails extends StatelessWidget {
  final double subtotal;
  final double tax;

  const InvoiceDetails({
    Key? key,
    required this.subtotal,
    required this.tax,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double total = subtotal + tax;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Subtotal: \₱ ${subtotal.toStringAsFixed(2)}',
          style: TextStyle(fontSize: 18),
        ),
        Text(
          'Tax: \₱ ${tax.toStringAsFixed(2)}',
          style: TextStyle(fontSize: 18),
        ),
        Divider(),
        Text(
          'Total: \₱ ${total.toStringAsFixed(2)}',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
