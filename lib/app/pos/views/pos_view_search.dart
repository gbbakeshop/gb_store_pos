import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gb_pos_store/app/pos/bloc/bloc.dart';

class POSViewSearch extends StatefulWidget {
  const POSViewSearch({Key? key}) : super(key: key);

  @override
  State<POSViewSearch> createState() => _POSViewSearchState();
}

class _POSViewSearchState extends State<POSViewSearch> {
  final FocusNode _focusNode = FocusNode();
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(); // Initialize _controller
  }

  @override
  void dispose() {
    _focusNode.dispose();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var bloc = context.read<PosBloc>();

    return BlocBuilder<PosBloc, PosState>(
      builder: (context, state) {
        _controller.text = state.searchInput ?? ''; // Update text value here
        return TextField(
          controller: _controller, // Use initialized _controller
          focusNode: _focusNode,
          autofocus: true,
          decoration: const InputDecoration(
            labelText: 'Search Barcode',
            hintText: 'Enter search...',
            prefixIcon: Icon(Icons.search),
            border: OutlineInputBorder(),
          ),
          onSubmitted: (value) {
            _focusNode.unfocus();
            bloc.add(SearchItem(value));
            FocusScope.of(context).requestFocus(_focusNode);
          },
        );
      },
    );
  }
}
