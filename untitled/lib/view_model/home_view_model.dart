import 'package:flutter/cupertino.dart';

import '../data/response/api_response.dart';
import '../model/users_model.dart';
import '../respository/home_respository.dart';

class HomeViewViewModel with ChangeNotifier {
  final _myRepo = HomeRepository();

  ApiResponse<UsersModel> users = ApiResponse.loading();

  setUsers(ApiResponse<UsersModel> response) {
    users = response;
    notifyListeners();
  }

  Future<void> fetchUsersApi() async {
    setUsers(ApiResponse.loading());

    _myRepo.fetchUsers().then((value) {
      setUsers(ApiResponse.completed(value));
    }).onError((error, stackTrace) {
      setUsers(ApiResponse.error(error.toString()));
    });
  }
}
