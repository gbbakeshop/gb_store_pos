import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gb_pos_store/app/pos/bloc/pos_bloc.dart';
import 'package:gb_pos_store/app/pos/bloc/pos_state/pos_state.dart';

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
            rows: <DataRow>[
              DataRow(
                cells: <DataCell>[
                  DataCell(Text(state.goods?.id.toString() ?? '')),
                  DataCell(Text(state.goods?.quantity.toString() ?? '')),
                  DataCell(Text(state.goods?.description ?? '')),
                  DataCell(Text(state.goods?.price.toString() ?? '')),
                  DataCell(Text(state.goods?.total.toString() ?? '')),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
