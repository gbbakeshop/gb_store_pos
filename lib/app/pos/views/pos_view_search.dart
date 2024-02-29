import 'package:flutter/material.dart';

class POSViewSearch extends StatefulWidget {
  const POSViewSearch({super.key});

  @override
  State<POSViewSearch> createState() => _POSViewSearchState();
}

class _POSViewSearchState extends State<POSViewSearch> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController _controller = TextEditingController();
    return TextField(
      controller: _controller,
      decoration: const InputDecoration(
        labelText: 'Search Barcode',
        hintText: 'Enter search...',
        prefixIcon: Icon(Icons.search),
        border: OutlineInputBorder(),
      ),
      onChanged: (value) {
        // Handle search query changes here
        print('Search query: $value');
      },
    );
  }
}
