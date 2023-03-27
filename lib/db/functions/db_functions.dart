import 'package:flutter/cupertino.dart';

import '../models/data_model.dart';

ValueNotifier<List<GrocerryItemModel>> grocerryListNotifier = ValueNotifier([]);

void addGrocerry(GrocerryItemModel value) {
  grocerryListNotifier.value.add(value);
  grocerryListNotifier.notifyListeners();
}