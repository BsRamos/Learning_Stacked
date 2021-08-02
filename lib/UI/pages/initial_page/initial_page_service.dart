import 'package:my_app/app/app.locator.dart';
import 'package:my_app/core/HTTPS_request.dart';
import 'package:my_app/model/github_model.dart';

class InitialPageService {
  final HTTPSRequest httpClient = locator<HTTPSRequest>();

  Future<GithubModel> getUser() async {
    var response = await httpClient.dio.get('/users/BsRamos');
    print(response.data);
    GithubModel user = GithubModel.fromJson(response.data);
    return user;
  }
}
