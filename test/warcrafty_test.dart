import 'package:flutter_test/flutter_test.dart';

import 'package:warcrafty/warcrafty.dart';

void main() {
  test('Parse dbc', () {
    var warcrafty =
        Warcrafty.from('/Users/cals/Code/warcrafty/dbc/ChrRaces.dbc');
    expect(warcrafty.parse<WdbcChrRace>().isNotEmpty, true);
  });

  test('Parse db2', () {
    var warcrafty =
        Warcrafty.from('/Users/cals/Code/warcrafty/db2/zhCN/ChrRaces.db2');
    expect(warcrafty.parse<Wdc3ChrRace>().isNotEmpty, true);
  });
}
