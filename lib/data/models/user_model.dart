class UserModel {
  UserModel({required this.email, required this.name, this.image = ''});

  final String email;
  final String name;
  final String image;

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      email: map['email'],
      name: map['name'],
      image: map['image'],
    );
  }
}
