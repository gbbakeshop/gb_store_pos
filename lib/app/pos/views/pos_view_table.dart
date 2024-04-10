import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gb_pos_store/app/pos/bloc/pos_bloc.dart';
import 'package:gb_pos_store/app/pos/bloc/pos_state/pos_state.dart';
import 'package:gb_pos_store/models/models.dart';

class POSViewTable extends StatefulWidget {
  const POSViewTable({super.key});

  @override
  State<POSViewTable> createState() => _POSViewTableState();
}

class _POSViewTableState extends State<POSViewTable> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PosBloc, PosState>(
      builder: (context, state) {
        final List<Goods>? goodsList = state.goods;
        return SizedBox(
          width: double.infinity,
          child: DataTable(
            columns: const [
              DataColumn(
                label: Expanded(
                  child: Text(
                    'ITEM ID',
                    style: TextStyle(fontStyle: FontStyle.normal),
                  ),
                ),
              ),
              DataColumn(
                label: Expanded(
                  child: Text(
                    'Quantity',
                    style: TextStyle(fontStyle: FontStyle.normal),
                  ),
                ),
              ),
              DataColumn(
                label: Expanded(
                  child: Text(
                    'Description',
                    style: TextStyle(fontStyle: FontStyle.normal),
                  ),
                ),
              ),
              DataColumn(
                label: Expanded(
                  child: Text(
                    'Price',
                    style: TextStyle(fontStyle: FontStyle.normal),
                  ),
                ),
              ),
              DataColumn(
                label: Expanded(
                  child: Text(
                    'Total',
                    style: TextStyle(fontStyle: FontStyle.normal),
                  ),
                ),
              ),
            ],
            rows: goodsList?.map((Goods goods) {
                  return DataRow(
                    cells: [
                      DataCell(Text(goods.barcode.toString())),
                      DataCell(Text(goods.quantity.toString())),
                      DataCell(Text(goods.description ?? '')),
                      DataCell(Text(goods.price.toString())),
                      DataCell(Text(goods.total.toString())),
                    ],
                  );
                }).toList() ??
                [],
          ),
        );
      },
    );
  }
}
