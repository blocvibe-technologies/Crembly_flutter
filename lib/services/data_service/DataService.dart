


import '../../models/UsersResponce.dart';

import '../api_client/ApiClient.dart';
import '../end_points/EndPoints.dart';

class DataService {
  final APIClient apiClient;

  DataService({required this.apiClient});

  Future<UsersResponce> fetchUsers() async {
    try {
      final jsonData = await apiClient.get(Endpoints.posts);
      return UsersResponce.fromJson(jsonData);
    } catch (e) {
      // Handle error
      print(e);
      throw e;
    }
  }

  // Future<void> postData(DataModel data) async {
  //   try {
  //     await apiClient.post(Endpoints.postData, data.toJson());
  //   } catch (e) {
  //     // Handle error
  //     throw e;
  //   }
  // }
}
