import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gb_pos_store/app/pos/bloc/pos_bloc.dart';
import 'package:gb_pos_store/app/pos/bloc/pos_state/pos_state.dart';
import 'package:gb_pos_store/models/models.dart';

class POSViewCalculation extends StatefulWidget {
  const POSViewCalculation({super.key});

  @override
  State<POSViewCalculation> createState() => _POSViewCalculationState();
}

class _POSViewCalculationState extends State<POSViewCalculation> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PosBloc, PosState>(
      builder: (context, state) {
        final List<Goods>? goodsList = state.goods;
        double subtotal = 0;
        goodsList?.forEach((item) {
          int quantity = item.quantity; // Accessing quantity using dot notation
          double price =
              item.price.toDouble(); // Accessing price using dot notation
          double itemTotal = quantity * price;
          subtotal += itemTotal;
        });
        return Padding(
          padding: EdgeInsets.all(16.0),
          child: InvoiceDetails(
            subtotal: subtotal,
            tax: 0,
          ),
        );
      },
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
