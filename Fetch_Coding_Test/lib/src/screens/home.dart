import 'package:Fetch_Coding_Test/bloc/webbloc_bloc.dart';
import 'package:Fetch_Coding_Test/model/data_model.dart';
import 'package:Fetch_Coding_Test/repositories/repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(create: (context) => WebblocBloc(Repository())),
      child: Text(""),
    );
  }
}
