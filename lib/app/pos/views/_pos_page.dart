import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gb_pos_store/app/pos/bloc/pos_bloc.dart';
import 'package:gb_pos_store/app/pos/bloc/pos_state/pos_state.dart';
import 'package:gb_pos_store/app/pos/views/_pos_views.dart';
import 'package:gb_pos_store/repositories/item_repository.dart';

class PosPage extends StatefulWidget {
  final PosState? initialState;
  const PosPage({super.key, this.initialState});

  @override
  State<PosPage> createState() => _PosPageState();
}

class _PosPageState extends State<PosPage> {
  @override
  Widget build(BuildContext context) {
    double viewportHeight = MediaQuery.of(context).size.height;

    // Calculate the height of the container as 75% of the viewport height
    double containerHeight = viewportHeight * 0.75;
    return BlocProvider<PosBloc>(
      create: (context) => PosBloc(
          initialState: widget.initialState ?? const PosState(),
          itemRepository: RepositoryProvider.of<ItemRepository>(context)),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text('POS System'),
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Flexible(
                    flex: 7,
                    child: Container(
                      height: containerHeight,
                      width: double.infinity,
                      child: const SingleChildScrollView(
                        child: POSViewTable(),
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 3,
                    child: Container(
                      height: containerHeight,
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Column(
                              children: [
                                POSViewSearch(),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 40, 0, 0),
                                  child: POSViewCalculation(),
                                ),
                              ],
                            ),
                            ElevatedButton(
                              onPressed: () {
                                // Add your button onPressed logic here
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    const Color.fromARGB(255, 238, 111, 102),
                                minimumSize: const Size(double.infinity,
                                    50), // Full width and 50 height
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      4), // Rectangular border radius
                                ),
                              ),
                              child: const Text(
                                'PAY',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Flexible(
                    flex: 4,
                    child: Container(
                      color: Colors.blue[50],
                      child: const Center(
                        child: Text('ss'),
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 6,
                    child: Container(
                      color: Colors.blue[50],
                      child: const Center(
                        child: Text('ss'),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
