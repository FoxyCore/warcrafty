import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'parser/wdbc_parser.dart';
import 'parser/wdc3_parser.dart';

class Warcrafty {
  Warcrafty.from(String path) {
    _path = path;
    _buffer = File(path).readAsBytesSync().buffer;
    switch (utf8.decode(_buffer.asUint8List(0, 4))) {
      case 'WDBC':
        _parser = 'WdbcParser';
        break;
      case 'WDC3':
        _parser = 'Wdc3Parser';
        break;
      default:
        _parser = 'UnhandledParser';
        break;
    }
  }

  late String _path;
  late ByteBuffer _buffer;
  late String _parser;

  List<T> parse<T>() {
    var name = _path.split('/').last.split('.').first;
    if (_parser == 'WdbcParser') {
      /// 3.3.5 12340
      return WdbcParser(_buffer, name).parse<T>();
    } else if (_parser == 'Wdc3Parser') {
      /// 9.2.0 43206
      return Wdc3Parser(_buffer, name).parse<T>();
    } else {
      return <T>[];
    }
  }

  @override
  String toString() {
    return {
      'path': _path,
      'bytes': _buffer
          .asUint8List(0, 10)
          .toString()
          .replaceAll(']', '...](${_buffer.asUint8List().length} bytes)'),
      'parser': _parser,
    }.toString();
  }
}
