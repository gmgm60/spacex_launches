import 'package:fact_app/bloc/view_one_launch/one_launch_cubit.dart';
import 'package:fact_app/bloc/view_one_launch/one_launch_state.dart';
import 'package:fact_app/data_layer/models/launches_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OneLaunch extends StatelessWidget {
  final int flightNumber;

  const OneLaunch({Key? key, required this.flightNumber}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    OneLaunchCubit launchesCubit = context.read<OneLaunchCubit>();
    launchesCubit.getOneLaunch(flightNumber: flightNumber);
    return Scaffold(
      appBar: AppBar(
        title: const Text("View One Launch"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          BlocConsumer<OneLaunchCubit, OneLaunchState>(
            listener: (context, state) {},
            builder: (context, state) {
              return state.map(
                  init: (_) => const Center(child: CircularProgressIndicator()),
                  loading: (_) =>
                      const Center(child: CircularProgressIndicator()),
                  done: (state) {
                    return OneLaunchView(state.launchesModel);
                  },
                  error: (errorState) =>
                      Text("Error : ${errorState.errorMsg}"));
            },
          ),
        ],
      ),
    );
  }
}

class OneLaunchView extends StatelessWidget {
  final LaunchesModel launchesModel;

  const OneLaunchView(this.launchesModel, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        color: launchesModel.launchSuccess ? Colors.green : Colors.red,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Center(
                  child: Text(
                launchesModel.missionName,
                style: const TextStyle(fontSize: 20),
              )),
              const SizedBox(width: 20,),
              Center(
                child: SizedBox(
                    height: 200,
                    width: 200,
                    child: Image.network(launchesModel.links.missionPatch,)),
              ),

              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("launch year :${launchesModel.launchYear}"),
                  Text("flight number :${launchesModel.flightNumber}"),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Text("launch date local :${launchesModel.launchDateLocal}"),
              const SizedBox(
                height: 20,
              ),
              Text("launch success :${launchesModel.launchSuccess}"),
            ],
          ),
        ),
      ),
    );
  }
}
