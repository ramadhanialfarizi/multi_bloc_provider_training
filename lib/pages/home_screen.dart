import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:multi_bloc_provider_training/bloc/counter_bloc_state.dart';
import 'package:multi_bloc_provider_training/bloc/theme_bloc_state.dart';
import 'package:multi_bloc_provider_training/pages/widget/number_widget.dart';
//import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Counter myCounter = Counter();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Multi Bloc Provider'),
        //centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              context.read<ThemeChange>().changeTheme();
            },
            icon: const Icon(Icons.change_circle),
          )
        ],
      ),
      body: const NumberWidget(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          /*
           untuk mengambil data dari state management bloc bisa menggunakan :
           - context.read<Counter>();
           - BlocProvider.of<Counter>(context);
           */

          // bisa begini
          context.read<Counter>().increment();

          // atau bisa begini
          //BlocProvider.of<Counter>(context).increment();
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), //
    );
  }
}
