extension HiveKey on String {
  /// Generate key which can be used by hive
  int toHiveKey() {
    return hashCode;
  }
}
