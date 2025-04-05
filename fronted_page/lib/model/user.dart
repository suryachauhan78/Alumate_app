class UserModel {
  String? userId;
  String? name;
  String? email;
  String? course;
  String? branch;
  String? rollNumber;
  String? type; // Student/Alumni
  String? startingYear;
  String? passingYear;
  String? instituteName;
  String? userProfileUrl;

  UserModel({
    this.userId,
    this.name,
    this.email,
    this.course,
    this.branch,
    this.rollNumber,
    this.type,
    this.startingYear,
    this.passingYear,
    this.instituteName,
    this.userProfileUrl,
  });

  // Convert model to Map (for Firestore)
  Map<String, dynamic> toMap() {
    return {
      'userId': userId,
      'name': name,
      'email': email,
      'course': course,
      'branch': branch,
      'rollNumber': rollNumber,
      'type': type,
      'startingYear': startingYear,
      'passingYear': passingYear,
      'instituteName': instituteName,
      'userProfileUrl': userProfileUrl,
    };
  }

  // Create model from Firestore Map
  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      userId: map['userId'],
      name: map['name'],
      email: map['email'],
      course: map['course'],
      branch: map['branch'],
      rollNumber: map['rollNumber'],
      type: map['type'],
      startingYear: map['startingYear'],
      passingYear: map['passingYear'],
      instituteName: map['instituteName'],
      userProfileUrl: map['userProfileUrl'],
    );
  }
}
