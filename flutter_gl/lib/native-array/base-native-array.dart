part of native_array;

abstract class NativeArray<T extends num> {
  late int _size;
  late int oneByteSize;
  int get length => _size;
  int get lengthInBytes => length * oneByteSize;

  int get byteLength => lengthInBytes;
  int get len => length;
  int get BYTES_PER_ELEMENT => oneByteSize;
  
  bool disposed = false;

  get data;

  T operator [](int index); //=> data[index];
  void operator []=(int index, T value); // => data[index] = value;

  NativeArray(int size) : _size = size;

  List<T> toJson() => toDartList();
  List<T> toDartList();
  List<T> sublist(int start, [int? end]) => toDartList().sublist(start, end);
  NativeArray set(List<T> newList, [int index = 0]) {
    toDartList().setAll(index, newList.sublist(0, math.min(newList.length, length)));
    return this;
  }

  NativeArray clone();

  void copy(NativeArray source) {
    set(source.toDartList() as List<T>);
  }

  void dispose() {}
}
