part of native_array;

abstract class NativeArray<T extends num> {
  late int _size;
  late int oneByteSize;
  int get length => _size;
  int get lengthInBytes => length * oneByteSize;

  int get byteLength => lengthInBytes;
  int get len => length;
  int get BYTES_PER_ELEMENT => oneByteSize;

  get data;

  T operator [](int index); //=> data[index];
  void operator []=(int index, T value); // => data[index] = value;

  NativeArray(int size) : _size = size;

  List<T> toJson() => toDartList();
  List<T> toDartList();
  List<T> sublist(int start, [int? end]) => toDartList().sublist(start, end);
  NativeArray set(List<T> newList, [int index = 0]) {
    toDartList().setAll(0, newList);
    return this;
  }

  NativeArray clone();
  void dispose();
}
