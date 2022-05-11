import 'dart:convert';
import 'dart:typed_data';

import '../util/tool.dart';

class WdbcParser {
  WdbcParser(this.buffer, this.name);

  ByteBuffer buffer;
  String name;

  List<T> parse<T>() {
    var rows = <T>[];
    var offset = 4 * 5;
    var stringBlockOffset = 4 * 5 + getRecordCount() * getRecordSize();

    var tool = WarcraftyTool();
    var keys = tool.getKeys(name);
    var types = tool.getTypes(name);

    for (var i = 0; i < getRecordCount(); i++) {
      var map = <String, dynamic>{};
      for (var j = 0; j < keys.length; j++) {
        switch (types[j]) {
          case WarcraftyType.int8:
            map[keys[j]] = buffer.asInt8List(offset, 1)[0];
            offset += 1;
            break;
          case WarcraftyType.uint8:
            map[keys[j]] = buffer.asUint8List(offset, 1)[0];
            offset += 1;
            break;
          case WarcraftyType.int32:
            map[keys[j]] = buffer.asInt32List(offset, 1)[0];
            offset += 4;
            break;
          case WarcraftyType.uint32:
            map[keys[j]] = buffer.asUint32List(offset, 1)[0];
            offset += 4;
            break;
          case WarcraftyType.float32:
            map[keys[j]] = buffer.asFloat32List(offset, 1)[0];
            offset += 4;
            break;
          case WarcraftyType.string:
            var start = stringBlockOffset + buffer.asInt32List(offset, 1)[0];
            var end = start;
            while (true) {
              var unicode = buffer.asUint8List(end, 1)[0];
              if (unicode == 0) {
                break;
              }
              end += 1;
            }
            map[keys[j]] = utf8.decode(buffer.asUint8List(start, end - start));
            offset += 4;
            break;
          default:
            break;
        }
      }
      rows.add(tool.toModel<T>(map, name));
    }
    return rows;
  }

  int getRecordCount() {
    return buffer.asUint32List(4, 1)[0];
  }

  int getFieldCount() {
    return buffer.asUint32List(8, 1)[0];
  }

  int getRecordSize() {
    return buffer.asUint32List(12, 1)[0];
  }

  int getStringBlockSize() {
    return buffer.asUint32List(16, 1)[0];
  }
}
