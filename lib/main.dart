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
          debugShowCheckedModeBanner: false,
          home: Home(),
        ));
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
        title:
            const Text("Increment Operation", style: TextStyle(fontSize: 18)),
      ),
      body: Column(
        //mainAxisSize: MainAxisSize.min,
        // crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BlocBuilder<CounterBloc, CounterState>(
            builder: (context, state) {
              if (state is NumberIncremented) {
                return Text(state.count.toString());
              } else {
                return Text(state.count.toString());
              }
            },
          ),
          ElevatedButton(
              onPressed: () => context.read<CounterBloc>().add(Decrement()),
              child: const Text("Do Decrement")),
          SizedBox(
            height: 50,
          ),
          ElevatedButton(
              onPressed: () => context.read<CounterBloc>().add(Increment()),
              child: const Text("DO Increment")),
        ],
      ),
    );
  }
}
