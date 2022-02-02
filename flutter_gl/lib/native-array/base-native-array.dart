part of native_array;

class NativeArray {
  late int _size;
  late int oneByteSize;
  int get length => _size;
  int get lengthInBytes => length * oneByteSize;

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
