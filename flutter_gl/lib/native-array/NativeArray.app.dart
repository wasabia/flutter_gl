import 'dart:ffi';
import 'dart:typed_data';
import 'package:ffi/ffi.dart';
import 'index.dart';

abstract class PlatformNativeArray<T extends num> extends NativeArray<T> {
  PlatformNativeArray(int size) : super(size) {}

  PlatformNativeArray.from(List<T> listData) : super(listData.length);

  PlatformNativeArray clone() {
    throw Exception(" NativeArray clone need implement ");
  }

  @override
  void operator []=(int index, T value) {
    final list = toDartList();
    list[index] = value;
  }

  @override
  void dispose() {
    if (!disposed) {
      calloc.free(data);
      disposed = true;
    }
    super.dispose();
  }
}

class NativeFloat32Array extends PlatformNativeArray<double> {
  late Pointer<Float> _list;

  Pointer<Float> get data => _list;

  NativeFloat32Array(int size) : super(size) {
    _list = calloc<Float>(size);
    oneByteSize = sizeOf<Float>();
  }
  NativeFloat32Array.from(List<double> listData) : super.from(listData) {
    _list = calloc<Float>(listData.length);
    oneByteSize = sizeOf<Float>();
    toDartList().setAll(0, listData);
  }

  Float32List toDartList() {
    return data.asTypedList(length);
  }

  NativeFloat32Array setArray(Float32Array newList, [int index = 0]) {
    toDartList().setAll(index, newList.toDartList());
    return this;
  }

  NativeFloat32Array clone() {
    var dartList = this.toDartList();
    return NativeFloat32Array(dartList.length)..set(dartList);
  }

  @override
  double operator [](int index) {
    return _list.elementAt(index).value;
  }
}

class NativeFloat64Array extends PlatformNativeArray<double> {
  late Pointer<Double> _list;

  Pointer<Double> get data => _list;

  NativeFloat64Array(int size) : super(size) {
    _list = calloc<Double>(size);
    oneByteSize = sizeOf<Double>();
  }
  NativeFloat64Array.from(List<double> listData) : super.from(listData) {
    _list = calloc<Double>(listData.length);
    oneByteSize = sizeOf<Double>();
    toDartList().setAll(0, listData);
  }

  Float64List toDartList() {
    return data.asTypedList(length);
  }

  NativeFloat64Array setArray(Float64Array newList, [int index = 0]) {
    toDartList().setAll(index, newList.toDartList());
    return this;
  }

  NativeFloat64Array clone() {
    var dartList = this.toDartList();
    return NativeFloat64Array(dartList.length)..set(dartList);
  }

  @override
  double operator [](int index) {
    return _list.elementAt(index).value;
  }
}

class NativeUint16Array extends PlatformNativeArray<int> {
  late Pointer<Uint16> _list;

  Pointer<Uint16> get data => _list;

  NativeUint16Array(int size) : super(size) {
    _list = calloc<Uint16>(size);
    oneByteSize = sizeOf<Uint16>();
  }

  NativeUint16Array.from(List<int> listData) : super.from(listData) {
    _list = calloc<Uint16>(listData.length);
    oneByteSize = sizeOf<Uint16>();
    this.toDartList().setAll(0, listData);
  }

  Uint16List toDartList() {
    return data.asTypedList(length);
  }

  NativeUint16Array clone() {
    var _dartList = this.toDartList();
    return NativeUint16Array(_dartList.length)..set(_dartList);
  }

  @override
  int operator [](int index) {
    return _list.elementAt(index).value;
  }
}

class NativeUint32Array extends PlatformNativeArray<int> {
  late Pointer<Uint32> _list;

  Pointer<Uint32> get data => _list;
  Pointer<Uint32> get buffer => data;

  NativeUint32Array(int size) : super(size) {
    _list = calloc<Uint32>(size);
    oneByteSize = sizeOf<Uint32>();
  }

  NativeUint32Array.from(List<int> listData) : super.from(listData) {
    _list = calloc<Uint32>(listData.length);
    oneByteSize = sizeOf<Uint32>();
    this.toDartList().setAll(0, listData);
  }

  Uint32List toDartList() {
    return data.asTypedList(length);
  }

  NativeUint32Array clone() {
    var _dartList = this.toDartList();
    return NativeUint32Array(_dartList.length)..set(_dartList);
  }

  @override
  int operator [](int index) {
    return _list.elementAt(index).value;
  }
}

class NativeInt8Array extends PlatformNativeArray<int> {
  late Pointer<Int8> _list;

  Pointer<Int8> get data => _list;

  NativeInt8Array(int size) : super(size) {
    _list = calloc<Int8>(size);
    oneByteSize = sizeOf<Int8>();
  }
  NativeInt8Array.from(List<int> listData) : super.from(listData) {
    _list = calloc<Int8>(listData.length);
    oneByteSize = sizeOf<Int8>();
    toDartList().setAll(0, listData);
  }

  Int8List toDartList() {
    return data.asTypedList(length);
  }

  NativeInt8Array clone() {
    var _dartList = toDartList();
    return NativeInt8Array(_dartList.length)..set(_dartList);
  }

  @override
  int operator [](int index) {
    return _list.elementAt(index).value;
  }
}

class NativeInt16Array extends PlatformNativeArray<int> {
  late Pointer<Int16> _list;

  Pointer<Int16> get data => _list;

  NativeInt16Array(int size) : super(size) {
    _list = calloc<Int16>(size);
    oneByteSize = sizeOf<Int16>();
  }
  NativeInt16Array.from(List<int> listData) : super.from(listData) {
    _list = calloc<Int16>(listData.length);
    oneByteSize = sizeOf<Int16>();
    this.toDartList().setAll(0, listData);
  }

  Int16List toDartList() {
    return data.asTypedList(length);
  }

  NativeInt16Array clone() {
    var _dartList = this.toDartList();
    return NativeInt16Array(_dartList.length)..set(_dartList);
  }

  @override
  int operator [](int index) {
    return _list.elementAt(index).value;
  }
}

class NativeInt32Array extends PlatformNativeArray<int> {
  late Pointer<Int32> _list;

  Pointer<Int32> get data => _list;

  NativeInt32Array(int size) : super(size) {
    _list = calloc<Int32>(size);
    oneByteSize = sizeOf<Int32>();
  }
  NativeInt32Array.from(List<int> listData) : super.from(listData) {
    _list = calloc<Int32>(listData.length);
    oneByteSize = sizeOf<Int32>();
    this.toDartList().setAll(0, listData);
  }

  Int32List toDartList() {
    return data.asTypedList(length);
  }

  NativeInt32Array clone() {
    var _dartList = this.toDartList();
    return NativeInt32Array(_dartList.length)..set(_dartList);
  }

  @override
  int operator [](int index) {
    return _list.elementAt(index).value;
  }
}

class NativeUint8Array extends PlatformNativeArray<int> {
  late Pointer<Uint8> _list;

  Pointer<Uint8> get data => _list;

  NativeUint8Array(int size) : super(size) {
    _list = calloc<Uint8>(size);
    oneByteSize = sizeOf<Uint8>();
  }
  NativeUint8Array.from(List<int> listData) : super.from(listData) {
    _list = calloc<Uint8>(listData.length);
    oneByteSize = sizeOf<Uint8>();
    this.toDartList().setAll(0, listData);
  }

  Uint8List toDartList() {
    return data.asTypedList(length);
  }

  NativeUint8Array clone() {
    var _dartList = this.toDartList();
    return NativeUint8Array(_dartList.length)..set(_dartList);
  }

  @override
  int operator [](int index) {
    return _list.elementAt(index).value;
  }
}
