class user_1 {
  String? name;
  String? company_name;

  user_1({
    this.name,
    this.company_name,
  });

  user_1.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    company_name = json['company_name'];
  }
}
