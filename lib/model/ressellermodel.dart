class RessellerModel {
  String email;
  String name;
  String qualification;
  String password;
  String? id;

  RessellerModel({
    required this.email,
    required this.name,
    required this.qualification,
    required this.password,
    required this.id,
  });

  Map<String, dynamic> tojsone() => {
    'email':email,
    'name':name,
    'qualification':qualification,
    'password':password
  };
}
