import 'dart:convert';
import 'dart:typed_data';

import 'package:warcrafty/src/util/tool.dart';

class Wdc3Parser {
  Wdc3Parser(this.buffer, this.name);

  ByteBuffer buffer;
  String name;

  List<T> parse<T>() {
    var offset = 0;

    var db2Header = Wdc3Db2Header.fromBuffer(buffer);
    offset = db2Header.getSize();

    var sectionHeaders = <Wdc3SectionHeader>[];
    for (var i = 0; i < db2Header.sectionCount; i++) {
      var sectionHeader = Wdc3SectionHeader.fromBuffer(buffer, offset);
      sectionHeaders.add(sectionHeader);
      offset += sectionHeader.getSize();
    }

    var fieldStructures = <Wdc3FieldStructure>[];
    for (var i = 0; i < db2Header.totalFieldCount; i++) {
      var fieldStructure = Wdc3FieldStructure.fromBuffer(buffer, offset);
      fieldStructures.add(fieldStructure);
      offset += fieldStructure.getSize();
    }

    var fieldStorageInfos = <Wdc3FieldStorageInfo>[];
    for (var i = 0; i < db2Header.fieldStorageInfoSize / 24; i++) {
      var fieldStorageInfo = Wdc3FieldStorageInfo.fromBuffer(buffer, offset);
      fieldStorageInfos.add(fieldStorageInfo);
      offset += fieldStorageInfo.getSize();
    }

    var palletDatas = <int>[];
    for (var i = 0; i < db2Header.palletDataSize; i++) {
      var palletData = buffer.asUint8List(offset, 1)[0];
      palletDatas.add(palletData);
      offset += 1;
    }

    var commonDatas = <int>[];
    for (var i = 0; i < db2Header.commonDataSize; i++) {
      var commonData = buffer.asUint8List(offset, 1)[0];
      commonDatas.add(commonData);
      offset += 1;
    }

    var dataSections = <Wdc3DataSection>[];
    for (var i = 0; i < db2Header.sectionCount; i++) {
      var dataSection = Wdc3DataSection.fromBuffer(
        buffer,
        offset,
        db2Header,
        sectionHeaders[i],
      );
      dataSections.add(dataSection);
      offset += dataSection.getOffset();
    }

    var parsedWdc3Db2 = ParsedWdc3Db2(
      db2Header,
      sectionHeaders,
      fieldStructures,
      fieldStorageInfos,
      palletDatas,
      commonDatas,
      dataSections,
    );
    return _Wdc3Db2Reader(name).read<T>(parsedWdc3Db2);
  }
}

class Wdc3Db2Header {
  Wdc3Db2Header.fromBuffer(ByteBuffer buffer) {
    signature = utf8.decode(buffer.asUint8List(0, 4));
    recordCount = buffer.asUint32List(4, 1)[0];
    fieldCount = buffer.asUint32List(8, 1)[0];
    recordSize = buffer.asUint32List(12, 1)[0];
    stringTableSize = buffer.asUint32List(16, 1)[0];
    tableHash = buffer.asUint32List(20, 1)[0];
    layoutHash = buffer.asUint32List(24, 1)[0];
    minId = buffer.asUint32List(28, 1)[0];
    maxId = buffer.asUint32List(32, 1)[0];
    locale = buffer.asUint32List(36, 1)[0];
    flags = buffer.asUint16List(40, 1)[0];
    idIndex = buffer.asUint16List(42, 1)[0];
    totalFieldCount = buffer.asUint32List(44, 1)[0];
    bitpackedDataOffset = buffer.asUint32List(48, 1)[0];
    lookupColumnCount = buffer.asUint32List(52, 1)[0];
    fieldStorageInfoSize = buffer.asUint32List(56, 1)[0];
    commonDataSize = buffer.asUint32List(60, 1)[0];
    palletDataSize = buffer.asUint32List(64, 1)[0];
    sectionCount = buffer.asUint32List(68, 1)[0];
  }

  late String signature;
  late int recordCount;
  late int fieldCount;
  late int recordSize;
  late int stringTableSize;
  late int tableHash;
  late int layoutHash;
  late int minId;
  late int maxId;
  late int locale;
  late int flags;
  late int idIndex;
  late int totalFieldCount;
  late int bitpackedDataOffset;
  late int lookupColumnCount;
  late int fieldStorageInfoSize;
  late int commonDataSize;
  late int palletDataSize;
  late int sectionCount;

  int getSize() {
    return 72;
  }

  @override
  String toString() {
    return {
      'signature': signature,
      'recordCount': recordCount,
      'fieldCount': fieldCount,
      'recordSize': recordSize,
      'stringTableSize': stringTableSize,
      'tableHash': tableHash,
      'layoutHash': layoutHash,
      'minId': minId,
      'maxId': maxId,
      'locale': locale,
      'flags': flags,
      'idIndex': idIndex,
      'totalFieldCount': totalFieldCount,
      'bitpackedDataOffset': bitpackedDataOffset,
      'lookupColumnCount': lookupColumnCount,
      'fieldStorageInfoSize': fieldStorageInfoSize,
      'commonDataSize': commonDataSize,
      'palletDataSize': palletDataSize,
      'sectionCount': sectionCount,
    }.toString();
  }
}

class Wdc3SectionHeader {
  Wdc3SectionHeader.fromBuffer(ByteBuffer buffer, int offset) {
    tactKeyHash = buffer.asUint64List(offset, 1)[0];
    fileOffset = buffer.asUint32List(offset + 8, 1)[0];
    recordCount = buffer.asUint32List(offset + 12, 1)[0];
    stringTableSize = buffer.asUint32List(offset + 16, 1)[0];
    offsetRecordsEnd = buffer.asUint32List(offset + 20, 1)[0];
    idListSize = buffer.asUint32List(offset + 24, 1)[0];
    relationshipDataSize = buffer.asUint32List(offset + 28, 1)[0];
    offsetMapIdCount = buffer.asUint32List(offset + 32, 1)[0];
    copyTableCount = buffer.asUint32List(offset + 36, 1)[0];
  }

  late int tactKeyHash;
  late int fileOffset;
  late int recordCount;
  late int stringTableSize;
  late int offsetRecordsEnd;
  late int idListSize;
  late int relationshipDataSize;
  late int offsetMapIdCount;
  late int copyTableCount;

  int getSize() {
    return 40;
  }

  @override
  String toString() {
    return {
      'tactKeyHash': tactKeyHash,
      'fileOffset': fileOffset,
      'recordCount': recordCount,
      'stringTableSize': stringTableSize,
      'offsetRecordsEnd': offsetRecordsEnd,
      'idListSize': idListSize,
      'relationshipDataSize': relationshipDataSize,
      'offsetMapIdCount': offsetMapIdCount,
      'copyTableCount': copyTableCount,
    }.toString();
  }
}

class Wdc3FieldStructure {
  Wdc3FieldStructure.fromBuffer(ByteBuffer buffer, int offset) {
    size = buffer.asUint16List(offset, 1)[0];
    position = buffer.asUint16List(offset + 2, 1)[0];
  }

  late int size;
  late int position;

  int getSize() {
    return 4;
  }

  @override
  String toString() {
    return {
      'size': size,
      'position': position,
    }.toString();
  }
}

enum FieldCompression {
  none,
  bitpacked,
  commonData,
  bitpackedIndexed,
  bitpackedIndexedArray,
  bitpackedSigned,
}

class Wdc3FieldStorageInfo {
  Wdc3FieldStorageInfo.fromBuffer(ByteBuffer buffer, int offset) {
    fieldOffsetBits = buffer.asUint16List(offset, 1)[0];
    fieldSizeBits = buffer.asUint16List(offset + 2, 1)[0];
    additionalDataSize = buffer.asUint32List(offset + 4, 1)[0];
    storageType = buffer.asUint32List(offset + 8, 1)[0];
    dynamicField1 = buffer.asUint32List(offset + 12, 1)[0];
    dynamicField2 = buffer.asUint32List(offset + 16, 1)[0];
    dynamicField3 = buffer.asUint32List(offset + 20, 1)[0];
  }

  late int fieldOffsetBits;
  late int fieldSizeBits;
  late int additionalDataSize;
  late int storageType;
  late int dynamicField1;
  late int dynamicField2;
  late int dynamicField3;

  int getSize() {
    return 24;
  }

  @override
  String toString() {
    return {
      'fieldOffsetBits': fieldOffsetBits,
      'fieldSizeBits': fieldSizeBits,
      'additionalDataSize': additionalDataSize,
      'storageType': storageType,
      'dynamicField1': dynamicField1,
      'dynamicField2': dynamicField2,
      'dynamicField3': dynamicField3,
    }.toString();
  }
}

class Wdc3DataSection {
  Wdc3DataSection.fromBuffer(
    ByteBuffer buffer,
    int offset,
    Wdc3Db2Header db2Header,
    Wdc3SectionHeader sectionHeader,
  ) {
    _offset = offset;
    if (db2Header.flags & 1 == 0) {
      recordDatas = <List<int>>[];
      for (var j = 0; j < sectionHeader.recordCount; j++) {
        var recordData = <int>[];
        for (var k = 0; k < db2Header.recordSize; k++) {
          recordData.add(buffer.asUint8List(offset, 1)[0]);
          offset += 1;
        }
        recordDatas!.add(recordData);
      }
      stringDatas = <int>[];
      for (var l = 0; l < sectionHeader.stringTableSize; l++) {
        stringDatas!.add(buffer.asUint8List(offset, 1)[0]);
        offset += 1;
      }
    } else {
      variableRecordDatas = <int>[];
      for (var j = 0;
          j < sectionHeader.offsetRecordsEnd - sectionHeader.fileOffset;
          j++) {
        variableRecordDatas!.add(buffer.asUint8List(offset, 1)[0]);
        offset += 1;
      }
    }
    ids = [];
    for (var j = 0; j < sectionHeader.idListSize / 4; j++) {
      ids.add(buffer.asUint32List(offset, 1)[0]);
      offset += 4;
    }
    if (sectionHeader.copyTableCount > 0) {
      copyTableEntries = [];
      for (var j = 0; j < sectionHeader.copyTableCount; j++) {
        var copyTableEntry = CopyTableEntry.fromBuffer(buffer, offset);
        copyTableEntries!.add(copyTableEntry);
        offset += copyTableEntry.getOffset();
      }
    }
    offsetMapEntries = [];
    for (var j = 0; j < sectionHeader.offsetMapIdCount; j++) {
      var offsetMapEntry = OffsetMapEntry.fromBuffer(buffer, offset);
      offsetMapEntries.add(offsetMapEntry);
      offset += offsetMapEntry.getOffset();
    }
    if (sectionHeader.relationshipDataSize > 0) {
      numEntries = buffer.asUint32List(offset, 1)[0];
      minId = buffer.asUint32List(offset + 4, 1)[0];
      maxId = buffer.asUint32List(offset + 8, 1)[0];
      offset += 12;
      var entries = [];
      for (var j = 0; j < numEntries!; j++) {
        var relationshipEntry = RelationshipEntry.fromBuffer(buffer, offset);
        entries.add(relationshipEntry);
        offset += relationshipEntry.getOffset();
      }
    }
    offsetMapIds = [];
    for (var j = 0; j < sectionHeader.offsetMapIdCount; j++) {
      offsetMapIds.add(buffer.asUint32List(offset, 1)[0]);
      offset += 4;
    }
    _offset = offset - _offset;
  }

  late int _offset;
  List<List<int>>? recordDatas;
  List<int>? stringDatas;
  List<int>? variableRecordDatas;
  late List<int> ids;
  List<CopyTableEntry>? copyTableEntries;
  late List<OffsetMapEntry> offsetMapEntries;
  int? numEntries;
  int? minId;
  int? maxId;
  List<RelationshipEntry>? entries;
  late List<int> offsetMapIds;

  int getOffset() {
    return _offset;
  }

  @override
  String toString() {
    return {
      'recordDatas': recordDatas,
      'stringDatas': stringDatas,
      'variableRecordDatas': variableRecordDatas,
      'ids': ids,
      'copyTableEntries': copyTableEntries,
      'offsetMapEntries': offsetMapEntries,
      'numEntries': numEntries,
      'minId': minId,
      'maxId': maxId,
      'entries': entries,
      'offsetMapIds': offsetMapIds,
    }.toString();
  }
}

class CopyTableEntry {
  CopyTableEntry.fromBuffer(
    ByteBuffer buffer,
    int offset,
  ) {
    idOfNewRow = buffer.asUint32List(offset, 1)[0];
    idOfCopiedRow = buffer.asUint32List(offset + 4, 1)[0];
  }

  late int idOfNewRow;
  late int idOfCopiedRow;

  int getOffset() {
    return 8;
  }

  @override
  String toString() {
    return {
      'idOfNewRow': idOfNewRow,
      'idOfCopiedRow': idOfCopiedRow,
    }.toString();
  }
}

class OffsetMapEntry {
  OffsetMapEntry.fromBuffer(ByteBuffer buffer, int offser) {
    offset = buffer.asUint32List(offset, 1)[0];
    size = buffer.asUint16List(offset + 4, 1)[0];
  }

  late int offset;
  late int size;

  int getOffset() {
    return 6;
  }

  @override
  String toString() {
    return {
      'offset': offset,
      'size': size,
    }.toString();
  }
}

class RelationshipEntry {
  RelationshipEntry.fromBuffer(ByteBuffer buffer, int offset) {
    foreignId = buffer.asUint32List(offset, 1)[0];
    recordIndex = buffer.asUint32List(offset + 4, 1)[0];
  }

  late int foreignId;
  late int recordIndex;

  int getOffset() {
    return 8;
  }

  @override
  String toString() {
    return {
      'foreignId': foreignId,
      'recordIndex': recordIndex,
    }.toString();
  }
}

class ParsedWdc3Db2 {
  ParsedWdc3Db2(
    this.db2Header,
    this.sectionHeaders,
    this.fieldStructures,
    this.fieldStorageInfos,
    this.palletDatas,
    this.commonDatas,
    this.dataSections,
  );

  Wdc3Db2Header db2Header;
  List<Wdc3SectionHeader> sectionHeaders;
  List<Wdc3FieldStructure> fieldStructures;
  List<Wdc3FieldStorageInfo> fieldStorageInfos;
  List<int> palletDatas;
  List<int> commonDatas;
  List<Wdc3DataSection> dataSections;

  @override
  String toString() {
    return {
      'db2Header': db2Header,
      'sectionHeaders': sectionHeaders,
      'fieldStructures': fieldStructures,
      'fieldStorageInfos': fieldStorageInfos,
      'palletDatas': palletDatas,
      'commonDatas': commonDatas,
      'dataSections': dataSections,
    }.toString();
  }
}

class _Wdc3Db2Reader {
  _Wdc3Db2Reader(this.name);

  String name;

  List<T> read<T>(ParsedWdc3Db2 parsedWdc3Db2) {
    var rows = <T>[];

    var tool = WarcraftyTool();
    tool.getKeys(name, signature: parsedWdc3Db2.db2Header.signature);
    tool.getTypes(name, signature: parsedWdc3Db2.db2Header.signature);
    for (var dataSection in parsedWdc3Db2.dataSections) {
      for (var recordData in dataSection.recordDatas!) {
        var row = [];
        for (var i = 0; i < parsedWdc3Db2.fieldStructures.length; i++) {
          row.add(transform(
            recordData,
            parsedWdc3Db2.fieldStructures[i],
            parsedWdc3Db2.fieldStorageInfos[i],
          ));
        }
      }
    }
    return rows;
  }

  transform(
    List<int> recordData,
    Wdc3FieldStructure fieldStructure,
    Wdc3FieldStorageInfo fieldStorageInfo,
  ) {
    var result = 0;
    var size = (32 - fieldStructure.size) / 8;
    switch (fieldStorageInfo.storageType) {
      case 0:
        if (size == 4) {
          result = transformUint32(recordData, fieldStructure.position);
        } else if (size == 2) {
          result = transformUint16(recordData, fieldStructure.position);
        } else if (size == 1) {
          result = transformUint8(recordData, fieldStructure.position);
        }
        break;
      default:
        break;
    }
    return result;
  }

  int transformUint32(List<int> list, int offset) {
    return Uint32List.fromList(list).buffer.asUint32List(offset, 1)[0];
  }

  int transformUint16(List<int> list, int offset) {
    return Uint16List.fromList(list).buffer.asUint16List(offset, 1)[0];
  }

  int transformUint8(List<int> list, int offset) {
    return Uint8List.fromList(list).buffer.asUint8List(offset, 1)[0];
  }
}
