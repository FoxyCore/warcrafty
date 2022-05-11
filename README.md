# warcrafty

A library used to read / write dbc / db2 file, and will support mpq generate in the future.

## Usage

```dart
import 'package:warcrafty/warcrafty.dart';

void main() {
  var warcrafty = Warcrafty.from('./dbc/ChrRaces.dbc');
  warcrafty.parse<WdbcChrRace>();
}
```
