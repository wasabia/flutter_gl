part of native_array;

class NativeArray {
  late int _size;
  late int oneByteSize;
  int get length => _size;
  int get lengthInBytes => length * oneByteSize;

  int get byteLength => lengthInBytes;
  int get len => length;
  int get BYTES_PER_ELEMENT => oneByteSize;

  get data {}

  NativeArray(size) {
    _size = size;
  }

  toJson() {
    return toDartList();
  }

  toDartList() {}

  dispose() {}
}
