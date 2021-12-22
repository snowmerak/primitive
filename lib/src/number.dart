import 'dart:typed_data';

abstract class Integer {
  ByteData data = ByteData(0);

  Integer(int value);

  int get value;

  Integer operator +(Integer other);

  Integer operator -(Integer other);

  Integer operator -();

  Integer operator *(Integer other);

  Integer operator /(Integer other);

  Integer operator %(Integer other);

  Integer operator ~/(Integer other);

  Integer operator <<(int shiftAmount);

  Integer operator >>(int shiftAmount);

  Integer operator &(Integer other);

  Integer operator |(Integer other);

  Integer operator ^(Integer other);

  Integer operator ~();

  bool operator <(Integer other);

  bool operator <=(Integer other);

  bool operator >(Integer other);

  bool operator >=(Integer other);

  Integer pow(Integer exponent);

  @override
  String toString() {
    return '0';
  }

  Integer rotateLeft(int shiftAmount);

  Integer rotateRight(int shiftAmount);

  Integer abs();
}

abstract class BigInteger {
  BigInt value = BigInt.zero;

  static final U64MIN = BigInt.zero;
  static final U64MAX = BigInt.parse("18446744073709551615", radix: 10);
  static final U64DIST = BigInt.parse("18446744073709551616", radix: 10);
  static final I128MAX = BigInt.parse("18446744073709551615", radix: 10);
  static final I128MIN = BigInt.parse("-18446744073709551616", radix: 10);
  static final U128MAX =
      BigInt.parse("340282366920938463463374607431768211455", radix: 10);
  static final U128MIN = BigInt.zero;
  static final U128DIST =
      BigInt.parse("340282366920938463463374607431768211456", radix: 10);
  static final I256MAX =
      BigInt.parse("340282366920938463463374607431768211455", radix: 10);
  static final I256MIN =
      BigInt.parse("-340282366920938463463374607431768211456", radix: 10);
  static final U256MAX = BigInt.parse(
      "115792089237316195423570985008687907853269984665640564039457584007913129639935",
      radix: 10);
  static final U256MIN = BigInt.zero;
  static final U256DIST = BigInt.parse(
      "115792089237316195423570985008687907853269984665640564039457584007913129639936",
      radix: 10);

  BigInteger(BigInt init);

  BigInteger operator +(BigInteger other);

  BigInteger operator -(BigInteger other);

  BigInteger operator -();

  BigInteger operator *(BigInteger other);

  BigInteger operator /(BigInteger other);

  BigInteger operator %(BigInteger other);

  BigInteger operator ~/(BigInteger other);

  BigInteger operator <<(int shiftAmount);

  BigInteger operator >>(int shiftAmount);

  BigInteger operator &(BigInteger other);

  BigInteger operator |(BigInteger other);

  BigInteger operator ^(BigInteger other);

  BigInteger operator ~();

  bool operator <(BigInteger other);

  bool operator <=(BigInteger other);

  bool operator >(BigInteger other);

  bool operator >=(BigInteger other);

  BigInteger pow(BigInteger exponent);

  @override
  String toString() {
    return '0';
  }

  BigInteger rotateLeft(int shiftAmount);

  BigInteger rotateRight(int shiftAmount);

  BigInteger abs();
}