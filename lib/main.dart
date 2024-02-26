import 'package:bloc_impimenatation/bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const ImplementBlock());
}

class ImplementBlock extends StatelessWidget {
  const ImplementBlock({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => CounterBloc(),
        child: const MaterialApp(
          home: Home(),
        ));
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: BlocBuilder<CounterBloc, CounterState>(
        builder: (context, state) {
          return Text(state.count.toString(),
              style: const TextStyle(fontSize: 15));
        },
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.read<CounterBloc>().add(Increment()),
        child: const Icon(Icons.add),
      ),
    );
  }
}
