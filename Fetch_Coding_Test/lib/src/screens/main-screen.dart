import 'package:Fetch_Coding_Test/bloc/webbloc_bloc.dart';
import 'package:Fetch_Coding_Test/repositories/repository.dart';
import 'package:Fetch_Coding_Test/src/widgets/data_item_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/webbloc_bloc.dart';
import '../../model/data_model.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fetch Rewards Coding Exercise"),
      ),
      body: Center(
        child: BlocProvider(
          create: (context) => WebblocBloc(Repository()),
          child:
              BlocBuilder<WebblocBloc, WebblocState>(builder: (context, state) {
            if (state is Initial) {
              return buildInitialInput(context);
            } else if (state is Loading) {
              return buildLoading();
            } else if (state is Loaded) {
              return buildColumnWithData(state.data, context);
            }
            return Container();
          }),
        ),
      ),
    );
  }

  Widget buildInitialInput(BuildContext context) {
    final webblocBloc = context.watch<WebblocBloc>();
    webblocBloc.add(FetchData());
    webblocBloc.close();
    return Container();
  }

  Widget buildLoading() {
    return Center(
      child: CircularProgressIndicator(),
    );
  }

  Widget buildColumnWithData(List<Data> data, BuildContext context) {
    return Scrollbar(
      child: ListView.builder(
          itemCount: data?.length ?? 0,
          itemBuilder: (context, index) {
            return Container(
              child: DataItemCard(context, data[index]),
            );
          }),
    );
  }
}
