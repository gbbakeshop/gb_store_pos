import 'package:flutter/material.dart';

class POSViewTable extends StatefulWidget {
  const POSViewTable({super.key});

  @override
  State<POSViewTable> createState() => _POSViewTableState();
}

class _POSViewTableState extends State<POSViewTable> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
        rows: const <DataRow>[
          DataRow(
            cells: <DataCell>[
              DataCell(Text('Sarah')),
              DataCell(Text('19')),
              DataCell(Text('Student')),
              DataCell(Text('19')),
              DataCell(Text('Student')),
            ],
          ),
          DataRow(
            cells: <DataCell>[
              DataCell(Text('Janine')),
              DataCell(Text('43')),
              DataCell(Text('Professor')),
              DataCell(Text('43')),
              DataCell(Text('Professor')),
            ],
          ),
          DataRow(
            cells: <DataCell>[
              DataCell(Text('William')),
              DataCell(Text('27')),
              DataCell(Text('Associate Professor')),
              DataCell(Text('27')),
              DataCell(Text('Associate Professor')),
            ],
          ),
          DataRow(
            cells: <DataCell>[
              DataCell(Text('William')),
              DataCell(Text('27')),
              DataCell(Text('Associate Professor')),
              DataCell(Text('27')),
              DataCell(Text('Associate Professor')),
            ],
          ),
          DataRow(
            cells: <DataCell>[
              DataCell(Text('William')),
              DataCell(Text('27')),
              DataCell(Text('Associate Professor')),
              DataCell(Text('27')),
              DataCell(Text('Associate Professor')),
            ],
          ),
          DataRow(
            cells: <DataCell>[
              DataCell(Text('William')),
              DataCell(Text('27')),
              DataCell(Text('Associate Professor')),
              DataCell(Text('27')),
              DataCell(Text('Associate Professor')),
            ],
          ),
          DataRow(
            cells: <DataCell>[
              DataCell(Text('William')),
              DataCell(Text('27')),
              DataCell(Text('Associate Professor')),
              DataCell(Text('27')),
              DataCell(Text('Associate Professor')),
            ],
          ),
          DataRow(
            cells: <DataCell>[
              DataCell(Text('William')),
              DataCell(Text('27')),
              DataCell(Text('Associate Professor')),
              DataCell(Text('27')),
              DataCell(Text('Associate Professor')),
            ],
          ),
          DataRow(
            cells: <DataCell>[
              DataCell(Text('William')),
              DataCell(Text('27')),
              DataCell(Text('Associate Professor')),
              DataCell(Text('27')),
              DataCell(Text('Associate Professor')),
            ],
          ),
          DataRow(
            cells: <DataCell>[
              DataCell(Text('William')),
              DataCell(Text('27')),
              DataCell(Text('Associate Professor')),
              DataCell(Text('27')),
              DataCell(Text('Associate Professor')),
            ],
          ),
          DataRow(
            cells: <DataCell>[
              DataCell(Text('William')),
              DataCell(Text('27')),
              DataCell(Text('Associate Professor')),
              DataCell(Text('27')),
              DataCell(Text('Associate Professor')),
            ],
          ),
          DataRow(
            cells: <DataCell>[
              DataCell(Text('William')),
              DataCell(Text('27')),
              DataCell(Text('Associate Professor')),
              DataCell(Text('27')),
              DataCell(Text('Associate Professor')),
            ],
          ),
        ],
      ),
    );
  }
}
