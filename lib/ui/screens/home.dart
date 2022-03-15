import 'package:fact_app/bloc/all_launches/launches_cubit.dart';
import 'package:fact_app/bloc/all_launches/launches_cubit.dart';
import 'package:fact_app/bloc/all_launches/launches_state.dart';
import 'package:fact_app/bloc/all_launches/launches_state.dart';
import 'package:fact_app/data_layer/models/launches_model.dart';
import 'package:fact_app/ui/screens/one_launch.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/all_launches/launches_state.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("SpaceX Launches"),
      ),
      body: BlocBuilder<LaunchesCubit, LaunchesState>(
        builder: (context, state) {
          return RefreshIndicator(
            onRefresh: () async {
              LaunchesCubit launchesCubit = context.read<LaunchesCubit>();
              launchesCubit.getAllLaunches();
            },
            child: CustomScrollView(
              slivers: [
                 state.map(init: (_) {
                      return SliverFixedExtentList(
                          itemExtent: 50,
                          delegate: SliverChildListDelegate([
                          const Center(child: CircularProgressIndicator()),
                          ]),
                         // child: ,
                           );
                    }, loading: (_) {
                      return SliverFixedExtentList(
                        itemExtent: 50,
                        delegate: SliverChildListDelegate([
                          const Center(child: CircularProgressIndicator()),
                        ]),
                        // child: ,
                      );
                    }, done: (state) {

                      return SliverList(
                        delegate: SliverChildBuilderDelegate((context, index) {
                          return LaunchesRow(state.list[index]);
                        }, childCount: state.list.length),
                      );
                    }, error: (errorState) {
                      return Text("Error : ${errorState.errorMsg}");
                    }
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class LaunchesRow extends StatelessWidget {
  final LaunchesModel launchesModel;

  const LaunchesRow(this.launchesModel, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) =>
                  OneLaunch(flightNumber: launchesModel.flightNumber)));
        },
        child: Card(
          color: launchesModel.launchSuccess ? Colors.green : Colors.red,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                SizedBox(
                    height: 70,
                    width: 70,
                    child: Image.network(
                      launchesModel.links.missionPatch,
                    )),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      launchesModel.missionName,
                      style: const TextStyle(
                          fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("launch year :${launchesModel.launchYear}"),
                        const SizedBox(width: 10,),
                        Text("flight number :${launchesModel.flightNumber}"),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
