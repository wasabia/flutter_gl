part of native_array;

class Float32Array extends NativeFloat32Array {
  Float32Array(int size) : super(size);
  Float32Array.from(List<double> listData) : super.from(listData);
}

class Float64Array extends NativeFloat64Array {
  Float64Array(int size) : super(size);
  Float64Array.from(List<double> listData) : super.from(listData);
}

class Uint32Array extends NativeUint32Array {
  Uint32Array(int size) : super(size);
  Uint32Array.from(List<int> listData) : super.from(listData);
}

class Uint16Array extends NativeUint16Array {
  Uint16Array(int size) : super(size);
  Uint16Array.from(List<int> listData) : super.from(listData);
}

class Uint8Array extends NativeUint8Array {
  Uint8Array(int size) : super(size);
  Uint8Array.from(List<int> listData) : super.from(listData);
}

class Int8Array extends NativeInt8Array {
  Int8Array(int size) : super(size);
  Int8Array.from(List<int> listData) : super.from(listData);
}

class Int16Array extends NativeInt16Array {
  Int16Array(int size) : super(size);
  Int16Array.from(List<int> listData) : super.from(listData);
}

class Int32Array extends NativeInt32Array {
  Int32Array(int size) : super(size);
  Int32Array.from(List<int> listData) : super.from(listData);
}
