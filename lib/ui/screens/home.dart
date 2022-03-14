import 'package:fact_app/bloc/all_launches/launches_cubit.dart';
import 'package:fact_app/bloc/all_launches/launches_cubit.dart';
import 'package:fact_app/bloc/all_launches/launches_state.dart';
import 'package:fact_app/data_layer/models/launches_model.dart';
import 'package:fact_app/ui/screens/one_launch.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("SpaceX Launches"),
      ),
      body: RefreshIndicator(
          onRefresh: () async{
            LaunchesCubit launchesCubit = context.read<LaunchesCubit>();
            launchesCubit.getAllLaunches();
          },
        child: ListView(
          children: [
            // ElevatedButton(onPressed: (){
            //   LaunchesCubit launchesCubit = context.read<LaunchesCubit>();
            //   launchesCubit.getAllLaunches();
            // }, child: const Text("Load")),
            BlocConsumer<LaunchesCubit, LaunchesState>(
              listener: (context, LaunchesState state) {
              },
              builder: (context, LaunchesState state) {
               return state.map(init: (_){
                 return const Center(child: CircularProgressIndicator());
               }, loading: (_){
                 return const Center(child: CircularProgressIndicator());
               }, done: (state){
                  return ListView.builder(
                    shrinkWrap: true,
                    primary: false,
                    itemBuilder: (context, index) {
                    return LaunchesRow(state.list[index]);
                  },
                    itemCount:state.list.length,
                  );
                }, error: (errorState){
                 return  Text("Error : ${errorState.errorMsg}");
                });

              },
            ),
          ],
        ),
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
        onTap: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=> OneLaunch(flightNumber: launchesModel.flightNumber)));
        },
        child: Card(
          color:launchesModel.launchSuccess ? Colors.green : Colors.red,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                SizedBox(
                    height: 70,
                    width: 70,
                    child: Image.network(launchesModel.links.missionPatch,)),
                const SizedBox(width: 20,),
                Column(
                  crossAxisAlignment:  CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(launchesModel.missionName,style: const TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                    const SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("launch year :${launchesModel.launchYear}"),
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

