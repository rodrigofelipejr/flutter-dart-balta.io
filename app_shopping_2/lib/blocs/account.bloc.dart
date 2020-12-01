import 'dart:convert';

import 'package:app_shopping_2/models/authenticate-user.model.dart';
import 'package:app_shopping_2/models/create-user.model.dart';
import 'package:app_shopping_2/models/user.model.dart';
import 'package:app_shopping_2/repositories/account.repository.dart';
import 'package:app_shopping_2/settings.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AccountBloc extends ChangeNotifier {
  var user = new UserModel();

  AccountBloc() {
    user = null;
    loadUser();
  }

  Future<UserModel> authenticate(AuthenticateModel model) async {
    try {
      var sharedPreferences = await SharedPreferences.getInstance();
      var repository = new AccountRepository();
      var res = await repository.authenticate(model);

      user = res;
      await sharedPreferences.setString('user', jsonEncode(user));

      return res;
    } catch (ex) {
      print(ex);
      user = null;
      return null;
    } finally {
      notifyListeners();
    }
  }

  Future<UserModel> create(CreateUserModel model) async {
    try {
      var repository = new AccountRepository();
      var res = await repository.create(model);
      return res;
    } catch (ex) {
      print(ex);
      user = null;
      return null;
    }
  }

  logout() async {
    var sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.setString('user', null);
    user = null;
    notifyListeners();
  }

  Future loadUser() async {
    var sharedPreferences = await SharedPreferences.getInstance();
    var userData = sharedPreferences.getString('user');
    if (userData != null) {
      var res = UserModel.fromJson(jsonDecode(userData));
      Settings.user = res;
      user = res;
    }
  }
}
