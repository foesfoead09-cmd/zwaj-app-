class UserModel {
  final String uid;
  final String name;
  final int age;
  final String gender;
  final String city;
  final String country;
  final String bio;
  final String photoUrl;
  final bool isVerified;
  final String intention;
  final List<String> likedBy;

  UserModel({
    required this.uid,
    required this.name,
    required this.age,
    required this.gender,
    required this.city,
    required this.country,
    required this.bio,
    required this.photoUrl,
    this.isVerified = false,
    required this.intention,
    this.likedBy = const [],
  });

  Map<String, dynamic> toMap() => {
        'uid': uid,
        'name': name,
        'age': age,
        'gender': gender,
        'city': city,
        'country': country,
        'bio': bio,
        'photoUrl': photoUrl,
        'isVerified': isVerified,
        'intention': intention,
        'likedBy': likedBy,
      };

  factory UserModel.fromMap(Map<String, dynamic> map) => UserModel(
        uid: map['uid'] ?? '',
        name: map['name'] ?? '',
        age: map['age'] ?? 0,
        gender: map['gender'] ?? '',
        city: map['city'] ?? '',
        country: map['country'] ?? '',
        bio: map['bio'] ?? '',
        photoUrl: map['photoUrl'] ?? '',
        isVerified: map['isVerified'] ?? false,
        intention: map['intention'] ?? '',
        likedBy: List<String>.from(map['likedBy'] ?? []),
      );
}
