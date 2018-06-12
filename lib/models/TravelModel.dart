import 'package:scoped_model/scoped_model.dart';

import '../objects/Travel.dart';

class TravelModel extends Model {
  List<Travel> _travels;

  TravelModel() {
    _travels = List<Travel>.generate(
      15, (i) => Travel(i, 'Trajet $i', 'Point A', 'Point B')
    );
  }

  List<Travel> get travels => _travels;

  void removeById(int id) {
    _travels = travels.where((t) => t.id != id).toList();
    notifyListeners();
  }
}