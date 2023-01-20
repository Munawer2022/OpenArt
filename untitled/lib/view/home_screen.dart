import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../data/response/status.dart';
import '../resources/app_color.dart';
import '../view_model/home_view_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeViewViewModel homeViewViewModel = HomeViewViewModel();

  @override
  void initState() {
    // TODO: implement initState
    homeViewViewModel.fetchUsersApi();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: ChangeNotifierProvider<HomeViewViewModel>(
        create: (BuildContext context) => homeViewViewModel,
        child: Consumer<HomeViewViewModel>(builder: (context, value, _) {
          switch (value.users.status) {
            case Status.LOADING:
              return const Center(child: Text('loading...'));
            case Status.ERROR:
              return Center(child: Text(value.users.message.toString()));
            case Status.COMPLETED:
              return ListView.builder(
                  itemCount: value.users.data!.data!.length,
                  itemBuilder: (context, index) {
                    return Card(
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(
                            value.users.data!.data![index].avatar.toString(),
                          ),
                        ),
                        title: Text(value.users.data!.data![index].firstName
                            .toString()),
                        subtitle: Text(value.users.data!.data![index].lastName
                                .toString() +
                            'firsthhdhdhdhsjkhdjashdhwhdhwhuuNamefirsthhdhdhdhsjkhdjashdhwhdhwhuuNamefirsthhdhdhdhsjkhdjashdhwhdhwhuuName'
                                .toString()),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Icon(Icons.circle,
                                size: 10, color: AppColors.blueColor),
                            SizedBox(
                                width:
                                    MediaQuery.of(context).size.width * 0.01),
                            const Icon(Icons.circle,
                                size: 10, color: AppColors.greenColor)
                          ],
                        ),
                      ),
                    );
                  });
          }
          return Container();
        }),
      ),
    );
  }
}
