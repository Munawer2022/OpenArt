import '../data/network/BaseApiServices.dart';
import '../data/network/NetworkApiServices.dart';
import '../model/users_model.dart';
import '../resources/app_url.dart';

class HomeRepository {
  BaseApiServices _apiServices = NetworkApiService();

  Future<UsersModel> fetchUsers() async {
    try {
      dynamic response =
          await _apiServices.getGetApiResponse(AppUrl.usersEndPoint);
      return response = UsersModel.fromJson(response);
    } catch (e) {
      throw e;
    }
  }
}
