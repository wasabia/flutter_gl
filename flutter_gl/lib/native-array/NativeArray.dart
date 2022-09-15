part of native_array;

class Float32Array extends NativeFloat32Array {
  Float32Array(int size) : super(size);
  Float32Array.from(List<double> listData) : super.from(listData);
  Float32Array.fromList(List<double> listData) : super.from(listData);

  Float32Array clone() {
    var dartList = this.toDartList();
    return Float32Array(dartList.length)..set(dartList);
  }
}

class Float64Array extends NativeFloat64Array {
  Float64Array(int size) : super(size);
  Float64Array.from(List<double> listData) : super.from(listData);
  Float64Array.fromList(List<double> listData) : super.from(listData);

  Float64Array clone() {
    var dartList = this.toDartList();
    return Float64Array(dartList.length)..set(dartList);
  }
}

class Uint32Array extends NativeUint32Array {
  Uint32Array(int size) : super(size);
  Uint32Array.from(List<int> listData) : super.from(listData);
  Uint32Array.fromList(List<int> listData) : super.from(listData);

  Uint32Array clone() {
    var dartList = this.toDartList();
    return Uint32Array(dartList.length)..set(dartList);
  }
}

class Uint16Array extends NativeUint16Array {
  Uint16Array(int size) : super(size);
  Uint16Array.from(List<int> listData) : super.from(listData);
  Uint16Array.fromList(List<int> listData) : super.from(listData);

  Uint16Array clone() {
    var dartList = this.toDartList();
    return Uint16Array(dartList.length)..set(dartList);
  }
}

class Uint8Array extends NativeUint8Array {
  Uint8Array(int size) : super(size);
  Uint8Array.from(List<int> listData) : super.from(listData);
  Uint8Array.fromList(List<int> listData) : super.from(listData);

  Uint8Array clone() {
    var dartList = this.toDartList();
    return Uint8Array(dartList.length)..set(dartList);
  }
}

class Int8Array extends NativeInt8Array {
  Int8Array(int size) : super(size);
  Int8Array.from(List<int> listData) : super.from(listData);
  Int8Array.fromList(List<int> listData) : super.from(listData);
}

class Int16Array extends NativeInt16Array {
  Int16Array(int size) : super(size);
  Int16Array.from(List<int> listData) : super.from(listData);
  Int16Array.fromList(List<int> listData) : super.from(listData);

  Int16Array clone() {
    var dartList = this.toDartList();
    return Int16Array(dartList.length)..set(dartList);
  }
}

class Int32Array extends NativeInt32Array {
  Int32Array(int size) : super(size);
  Int32Array.from(List<int> listData) : super.from(listData);
  Int32Array.fromList(List<int> listData) : super.from(listData);

  Int32Array clone() {
    var dartList = this.toDartList();
    return Int32Array(dartList.length)..set(dartList);
  }
}
