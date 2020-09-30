import 'package:datademo/model/user_model.dart';
import 'package:hive/hive.dart';

class HiveDB {
  var box = Hive.box('pdp_online');

  void storeUser(User user) async {
    box.put("user", user.toJson());
  }

  User loadUser() {
    var user = new User.fromJson(box.get('user'));
    return user;
  }

  void removeUser() async {
    box.delete("user");
  }
}
