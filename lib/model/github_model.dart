class GithubModel {
  String? login;
  int? id;
  String? name;

  GithubModel({this.login, this.id, this.name});

  GithubModel.fromJson(Map<String, dynamic> json) {
    login = json['login'];
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['login'] = this.login;
    data['id'] = this.id;
    data['name'] = this.name;
    return data;
  }
}
