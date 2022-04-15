/// used for better performance on app & desktop
/// when buffer need change frequent
/// if use Dart List, will need memory copy every time convert to pointer
library native_array;

import 'dart:typed_data';
import 'dart:math' as math;

import './NativeArray.app.dart' if (dart.library.js) './NativeArray.web.dart';

part './base-native-array.dart';
part './NativeArray.dart';
