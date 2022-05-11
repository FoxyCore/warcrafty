import '../model/chr_race.dart';

enum WarcraftyType { int8, uint8, int32, uint32, float32, string }

class WarcraftyTool {
  List<String> getKeys(String name, {String signature = 'WDBC'}) {
    var keys = <String>[];
    switch (name) {
      case 'ChrRaces':
        keys = WdbcChrRace.keys();
        if (signature == 'WDC3') {
          keys = Wdc3ChrRace.keys();
        }
        break;
      default:
        break;
    }
    return keys;
  }

  List<WarcraftyType> getTypes(String name, {String signature = 'WDBC'}) {
    var types = <WarcraftyType>[];
    switch (name) {
      case 'ChrRaces':
        types = WdbcChrRace.types();
        if (signature == 'WDC3') {
          types = Wdc3ChrRace.types();
        }
        break;
      default:
        break;
    }
    return types;
  }

  T toModel<T>(Map<String, dynamic> map, String name) {
    late T model;
    switch (name) {
      case 'ChrRaces':
        model = WdbcChrRace.fromJson(map) as T;
        break;
      default:
        break;
    }
    return model;
  }
}
