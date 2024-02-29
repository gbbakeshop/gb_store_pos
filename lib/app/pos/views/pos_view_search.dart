import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gb_pos_store/app/pos/bloc/bloc.dart';

class POSViewSearch extends StatefulWidget {
  const POSViewSearch({super.key});

  @override
  State<POSViewSearch> createState() => _POSViewSearchState();
}

class _POSViewSearchState extends State<POSViewSearch> {
  @override
  Widget build(BuildContext context) {
    var bloc = context.read<PosBloc>();

    final TextEditingController _controller = TextEditingController();
    return BlocBuilder<PosBloc, PosState>(
      builder: (context, state) {
        return TextField(
          controller: _controller,
          decoration: const InputDecoration(
            labelText: 'Search Barcode',
            hintText: 'Enter search...',
            prefixIcon: Icon(Icons.search),
            border: OutlineInputBorder(),
          ),
          onChanged: (value) {
            // print('Search query: $value');
            bloc.add(SearchItem(value));
          },
        );
      },
    );
  }
}
