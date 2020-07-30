class User {

  String name;
  String lastname;
  String password;
  String username;
  String birthDate;
  String cellphone;
 
  User({name, lastname, password, username, birthDate, cellphone});

  User.fromJson(Map<String, dynamic> json){
    // View 1
    name          = json['name'];
    lastname         = json['lastname'];
    password = json['password'];
    username         = json['username'];
    birthDate = json['birthDate'];
    cellphone = json['cellphone'];
  }
}