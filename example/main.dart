import 'package:warcrafty/warcrafty.dart';

void main() {
  wdbc();
  wdc3();
}

void wdbc() {
  var warcrafty = Warcrafty.from('./dbc/ChrRaces.dbc');
  warcrafty.parse<WdbcChrRace>();
}

void wdc3() {
  var warcrafty = Warcrafty.from('./db2/zhCN/ChrRaces.db2');
  warcrafty.parse<Wdc3ChrRace>();
}
